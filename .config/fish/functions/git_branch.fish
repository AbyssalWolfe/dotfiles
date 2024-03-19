#  ██████╗ ██╗████████╗    ██████╗ ██████╗  █████╗ ███╗   ██╗ ██████╗██╗  ██╗
# ██╔════╝ ██║╚══██╔══╝    ██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔════╝██║  ██║
# ██║  ███╗██║   ██║       ██████╔╝██████╔╝███████║██╔██╗ ██║██║     ███████║
# ██║   ██║██║   ██║       ██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║     ██╔══██║
# ╚██████╔╝██║   ██║       ██████╔╝██║  ██║██║  ██║██║ ╚████║╚██████╗██║  ██║
#  ╚═════╝ ╚═╝   ╚═╝       ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝

# Get current/master/develop branch
function git_branch -d "Get name of [current|master|develop] branch"
	command git rev-parse --git-dir &>/dev/null || return
	switch $argv[1]
		case current
			set ref (command git symbolic-ref --quiet HEAD 2> /dev/null)
			switch $status
				case 0
					echo (string split -r -m1 -f 2 / $ref)
				case 128
					return
				case "*"
					echo (command git rev-parse --short HEAD 2> /dev/null)
			end
			return
		case master
			for ref in refs/{heads,remotes/{origin/upstream}}/{default,main,mainline,master,trunk}
				if command git show-ref -q --verify $ref
					echo (string split -r -m1 -f 2 / $ref)
					return
				end
			end
			echo master
		case develop
			for branch in dev devel develop development
				if command git show-ref -q --verify refs/heads/$branch
					echo $branch
					return
				end
			end
			echo develop
	end
	return 1
end
