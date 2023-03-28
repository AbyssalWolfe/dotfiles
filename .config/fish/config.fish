# Interactive Shell Init
if status is-interactive
	function starship_transient_prompt_func
		starship module character
	end
	function starship_transient_rprompt_func
		starship module time
	end
	starship init fish | source
	enable_transience
end

# ENV Vars
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx CMAKE_GENERATOR "ninja"
# Move shit out of the $HOME directory to more sane XDG dirs
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx M2_HOME "$XDG_DATA_HOME/m2"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
set -gx TERMINFO "$XDG_DATA_HOME/terminfo"
set -gx TERMINFO_DIRS "$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
set -gx XAUTHORITY "$XDG_DATA_HOME/Xauthority"
set -gx XINITRC "$XDG_CONFIG_HOME/X11/xinitrc"
set -gx XSERVERRC "$XDG_CONFIG_HOME/X11/xserverrc"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"
# Create wgetrc with cache path if it doesn't already exist
if not test -e $WGETRC
	echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$WGETRC"
end
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"

# PATH
fish_add_path "$HOME/.local/bin"
fish_add_path "$CARGO_HOME/bin"
fish_add_path "$GOPATH/bin"
fish_add_path "$PNPM_HOME"

# Aliases
alias dotfiles="git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME"
alias l="lsd -a"
alias ll="lsd -la"
