# ███████╗███╗   ██╗██╗   ██╗    ██╗   ██╗ █████╗ ██████╗ ███████╗
# ██╔════╝████╗  ██║██║   ██║    ██║   ██║██╔══██╗██╔══██╗██╔════╝
# █████╗  ██╔██╗ ██║██║   ██║    ██║   ██║███████║██████╔╝███████╗
# ██╔══╝  ██║╚██╗██║╚██╗ ██╔╝    ╚██╗ ██╔╝██╔══██║██╔══██╗╚════██║
# ███████╗██║ ╚████║ ╚████╔╝      ╚████╔╝ ██║  ██║██║  ██║███████║
# ╚══════╝╚═╝  ╚═══╝  ╚═══╝        ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

# Remove greeting message
set -g fish_greeting

set -gx BAT_THEME "Catppuccin Macchiato"
set -gx CC clang
set -gx CMAKE_GENERATOR ninja
set -gx CXX "clang++"
set -gx DEVKITARM /opt/devkitpro/devkitARM
set -gx DEVKITPPC /opt/devkitpro/devkitPPC
set -gx DEVKITPRO /opt/devkitpro
#set -gx DRI_PRIME "pci-0000_0d_00_0"
set -gx EDITOR nvim
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"
set -gx GPG_TTY "$(tty)"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx MANROFFOPT -c
set -gx VISUAL nvim
#set -gx WLR_DRM_DEVICES="/dev/dri/card1"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# Move shit out of the $HOME directory to more sane XDG dirs
set -gx ANDROID_HOME "$XDG_DATA_HOME/android"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx DOTNET_CLI_HOME "$XDG_DATA_HOME/dotnet"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx GOBIN "$GOPATH/bin"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -gx M2_HOME "$XDG_DATA_HOME/m2"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"
set -gx PERL5LIB "$XDG_DATA_HOME/perl5/lib/perl5"
set -gx PERL_CPANM_HOME "$XDG_CACHE_HOME/cpanm"
set -gx PERL_LOCAL_LIB_ROOT "$XDG_DATA_HOME/perl5:$PERL_LOCAL_LIB_ROOT"
set -gx PERL_MB_OPT "--install_base $XDG_DATA_HOME/perl5"
set -gx PERL_MM_OPT "INSTALLBASE=$XDG_DATA_HOME/perl5"
set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"
set -gx PYTHONSTARTUP "$XDG_CONFIG_HOME/python/pythonrc"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx TERMINFO "$XDG_DATA_HOME/terminfo"
set -gx TERMINFO_DIRS "$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
if test $XDG_SESSION_TYPE = wayland
    set -gx QT_QPA_PLATFORM wayland
    set -gx QT_WAYLAND_DISABLE_WINDOWDECORATION 1
    set -gx MOZ_ENABLE_WAYLAND 1
end
set -gx W3M_DIR "$XDG_DATA_HOME/w3m"
set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"
# Create wgetrc with cache path if it doesn't already exist
if ! test -e $WGETRC
    echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >>"$WGETRC"
end
set -gx WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
set -gx XAUTHORITY "$XDG_DATA_HOME/Xauthority"
set -gx XINITRC "$XDG_CONFIG_HOME/X11/xinitrc"
set -gx XSERVERRC "$XDG_CONFIG_HOME/X11/xserverrc"
