# ██████╗  █████╗ ████████╗██╗  ██╗
# ██╔══██╗██╔══██╗╚══██╔══╝██║  ██║
# ██████╔╝███████║   ██║   ███████║
# ██╔═══╝ ██╔══██║   ██║   ██╔══██║
# ██║     ██║  ██║   ██║   ██║  ██║
# ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝

fish_add_path "$HOME/.local/bin"
fish_add_path "$CARGO_HOME/bin"
fish_add_path "$GOBIN"
fish_add_path "$XDG_DATA_HOME/perl5/bin"
fish_add_path "$PNPM_HOME"
fish_add_path "$(ruby -e 'print Gem.user_dir')/bin"
fish_add_path "$DEVKITARM/bin"
