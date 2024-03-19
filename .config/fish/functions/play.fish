# ██████╗ ██╗      █████╗ ██╗   ██╗
# ██╔══██╗██║     ██╔══██╗╚██╗ ██╔╝
# ██████╔╝██║     ███████║ ╚████╔╝
# ██╔═══╝ ██║     ██╔══██║  ╚██╔╝
# ██║     ███████╗██║  ██║   ██║
# ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝

# Play media through single-instance MPV
function play -d "Play media"
	# Check for existing MPV instance using mpv.sock
	if test -e "/tmp/mpv.sock" && echo "{\"command\": [\"get_version\"]}" | socat - /tmp/mpv.sock | string match -r "success"
		set -l urls ""
		set -l opts ""
		set -l season ""
		for arg in $argv
			if string sub -l 1 $arg = "-"
				set -a urls $arg
			else if string match -qr '^[0-9]+(\.?[0-9]*)?$' -- "$arg"
				set season $arg
			else
				set -a opts $arg
			end
		end
		for url in $urls
			if ! test -n $url
				continue
			end
			switch $url
				case "*crunchyroll.com/series/"
					set -a opts "--ytdl-raw-options=\"--reject-title '[dD]ub' --match-filters 'season_number=$season'\""
			end
			echo "url: $url\nopts: $opts\nseason: $season"
			echo "raw loadfile $url append $opts" | socat - /tmp/mpv.sock
		end
		return 0
	end

	# Kill any rogue MPV processes
	pkill mpv

	# Create MPV instance
	nohup mpv --no-terminal --input-ipc-server=/tmp/mpv.sock $argv &> /dev/null &disown
end
