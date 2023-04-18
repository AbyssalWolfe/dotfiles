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

# Remove greeting message
set -g fish_greeting

# ENV Vars
set -gx BAT_THEME "Dracula Pro"
set -gx CC "clang"
set -gx CMAKE_GENERATOR "ninja"
set -gx CXX "clang++"
set -gx EDITOR "nvim"
set -gx FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#22212c,hl:#9580ff,fg+:#ffffff,bg+:#2e2b3b,hl+:#9580ff,info:#ffca80,prompt:#8aff80,pointer:#ff80bf,marker:#ff80bf,spinner:#ffca80,header:#393649"
set -gx GPG_TTY "$(tty)"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx VISUAL "nvim"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
# Move shit out of the $HOME directory to more sane XDG dirs
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -gx M2_HOME "$XDG_DATA_HOME/m2"
set -gx NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"
set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx TERMINFO "$XDG_DATA_HOME/terminfo"
set -gx TERMINFO_DIRS "$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"
# Create wgetrc with cache path if it doesn't already exist
if ! test -e $WGETRC
	echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$WGETRC"
end
set -gx WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
set -gx XAUTHORITY "$XDG_DATA_HOME/Xauthority"
set -gx XINITRC "$XDG_CONFIG_HOME/X11/xinitrc"
set -gx XSERVERRC "$XDG_CONFIG_HOME/X11/xserverrc"

# PATH
fish_add_path "$HOME/.local/bin"
fish_add_path "$CARGO_HOME/bin"
fish_add_path "$GOPATH/bin"
fish_add_path "$PNPM_HOME"
fish_add_path "$(ruby -e 'print Gem.user_dir')/bin"

# Aliases
alias cd="pushd"
alias dotfiles="git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME"
alias l="lsd -a"
alias ll="lsd -la"
if test -e /etc/os-release
	switch (grep -oP "(?<=^ID=).+" /etc/os-release | tr -d '"')
	case arch steamos manjaro
		if command -q paru
			alias pkgi="paru -S"
			alias pkgr="paru -Rnsc"
			alias pkgs="paru -Ss"
			alias pkgu="paru -Syu"
		else
			alias pkgi="pacman -S"
			alias pkgr="pacman -Rnsc"
			alias pkgs="pacman -Ss"
			alias pkgu="pacman -Syu"
		end
	end
end
alias pd="popd"
alias v="$EDITOR"
