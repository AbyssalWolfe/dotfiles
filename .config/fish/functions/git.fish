#  ██████╗ ██╗████████╗
# ██╔════╝ ██║╚══██╔══╝
# ██║  ███╗██║   ██║
# ██║   ██║██║   ██║
# ╚██████╔╝██║   ██║
#  ╚═════╝ ╚═╝   ╚═╝

# If in $HOME then set dotfiles dirs
function git -w git -d "git - Version Control System"
    if test (pwd) = $HOME
        command git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME $argv
    else
        command git $argv
    end
end
