#!/bin/sh
# shellcheck disable=SC2155

####################################################################
#                                                                  #
# ███████╗███╗   ██╗██╗   ██╗    ██╗   ██╗ █████╗ ██████╗ ███████╗ #
# ██╔════╝████╗  ██║██║   ██║    ██║   ██║██╔══██╗██╔══██╗██╔════╝ #
# █████╗  ██╔██╗ ██║██║   ██║    ██║   ██║███████║██████╔╝███████╗ #
# ██╔══╝  ██║╚██╗██║╚██╗ ██╔╝    ╚██╗ ██╔╝██╔══██║██╔══██╗╚════██║ #
# ███████╗██║ ╚████║ ╚████╔╝      ╚████╔╝ ██║  ██║██║  ██║███████║ #
# ╚══════╝╚═╝  ╚═══╝  ╚═══╝        ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝ #
#                                                                  #
####################################################################

export BAT_THEME="Dracula Pro"
export BROWSER="firefox"
export CC="clang"
export CMAKE_GENERATOR="ninja"
export CXX="clang++"
export DEVKITARM="/opt/devkitpro/devkitARM"
export DEVKITPPC="/opt/devkitpro/devkitPPC"
export DEVKITPRO="/opt/devkitpro"
export EDITOR="nvim"
export FZF_DEFAULT_OPTS="\
--color=bg:#22212c,bg+:#2e2b3b,fg:#f8f8f2,fg+:#ffffff \
--color=hl:#9580ff,hl+:#9580ff,info:#ffca80,prompt:#8aff80 \
--color=pointer:#ff80bf,marker:#ff80bf,spinner:#ffca80,header:#393649"
export GPG_TTY="$(tty)"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export TERMINAL="wezterm"
export VISUAL="nvim"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Move shit out of the $HOME directory to more sane XDG dirs
export ANDROID_HOME="$XDG_DATA_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOBIN="$GOPATH/bin"
export GOPATH="$XDG_DATA_HOME/go"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
export M2_HOME="$XDG_DATA_HOME/m2"
export NIMBLE_DIR="$XDG_DATA_HOME/nimble"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export PERL5LIB="$XDG_DATA_HOME/perl5/lib/perl5"
export PERL_CPANM_HOME="$XDG_CACHE_HOME/cpanm"
export PERL_LOCAL_LIB_ROOT="$XDG_DATA_HOME/perl5:$PERL_LOCAL_LIB_ROOT"
export PERL_MB_OPT="--install_base $XDG_DATA_HOME/perl5"
export PERL_MM_OPT="INSTALLBASE=$XDG_DATA_HOME/perl5"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
if test "$XDG_SESSION_TYPE" = wayland; then
	export QT_QPA_PLATFORM="wayland"
	export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
	export MOZ_ENABLE_WAYLAND=1
fi
export W3M_DIR="$XDG_DATA_HOME/w3m"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
# Create wgetrc with cache path if it doesn't already exist
if ! test -e "$WGETRC"; then
	echo "hsts-file = $XDG_CACHE_HOME/wget-hsts" >>"$WGETRC"
fi
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

#####################################
#                                   #
# ██████╗  █████╗ ████████╗██╗  ██╗ #
# ██╔══██╗██╔══██╗╚══██╔══╝██║  ██║ #
# ██████╔╝███████║   ██║   ███████║ #
# ██╔═══╝ ██╔══██║   ██║   ██╔══██║ #
# ██║     ██║  ██║   ██║   ██║  ██║ #
# ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ #
#                                   #
#####################################

# Add local bin
PATH="$HOME/.local/bin:$PATH"

# Add Rust Cargo bin
PATH="$CARGO_HOME/bin:$PATH"

# Add Go bin
PATH="$GOBIN:$PATH"

# Add Perl5 bin
PATH="$XDG_DATA_HOME/perl5/bin:$PATH"

# Add Ruby Gems bin
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Add PNPM bin
PATH="$PNPM_HOME:$PATH"

# Add DevkitPro ARM bin
PATH="$DEVKITARM/bin:$PATH"

# Export the PATH
export PATH

############################################################################
#                                                                          #
# ███████╗███████╗██╗  ██╗     █████╗  ██████╗ ███████╗███╗   ██╗████████╗ #
# ██╔════╝██╔════╝██║  ██║    ██╔══██╗██╔════╝ ██╔════╝████╗  ██║╚══██╔══╝ #
# ███████╗███████╗███████║    ███████║██║  ███╗█████╗  ██╔██╗ ██║   ██║    #
# ╚════██║╚════██║██╔══██║    ██╔══██║██║   ██║██╔══╝  ██║╚██╗██║   ██║    #
# ███████║███████║██║  ██║    ██║  ██║╚██████╔╝███████╗██║ ╚████║   ██║    #
# ╚══════╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝    #
#                                                                          #
############################################################################

if [ -z "$SSH_AUTH_SOCK" ]; then
	eval "$(ssh-agent -s)"
fi
trap 'test -n "$SSH_AUTH_SOCK" && eval "$(ssh-agent -k)"' EXIT
