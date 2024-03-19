# ██╗     ███████╗ ██████╗██████╗
# ██║     ██╔════╝██╔════╝██╔══██╗
# ██║     █████╗  ██║     ██║  ██║
# ██║     ██╔══╝  ██║     ██║  ██║
# ███████╗██║     ╚██████╗██████╔╝
# ╚══════╝╚═╝      ╚═════╝╚═════╝

# Change directory on lf exit
function lfcd -w "lf" -d "lf - Terminal file manager (changing directory on exit)"
	cd "$(command lf -print-last-dir $argv)"
end
