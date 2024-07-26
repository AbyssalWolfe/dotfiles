############################################
#                                          #
# ███████╗███████╗██╗  ██╗██████╗  ██████╗ #
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝ #
#   ███╔╝ ███████╗███████║██████╔╝██║      #
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║      #
# ███████╗███████║██║  ██║██║  ██║╚██████╗ #
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ #
#                                          #
############################################

# Aliases
source $XDG_CONFIG_HOME/shell/alias.sh

# History
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$XDG_CACHE_HOME/zsh/history"

if [ ! -f $HISTFILE ]; then
	mkdir -p $(dirname $HISTFILE)
	touch $HISTFILE
fi

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^[[A' history-beginning-search-backward-end
bindkey '^[[B' history-beginning-search-forward-end

# Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vi keybindings in tab completions
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect '^?' backward-delete-char

# Change cursor shape for different vi modes
function zle-keymap-select {
	case $KEYMAP in
		(main|viins) echo -ne "\e[5 q" ;;
		(vicmd|viopp) echo -ne "\e[1 q" ;;
	esac
}
function zle-line-init() {
	zle -K viins
	echo -ne "\e[5 q"
}
function preexec() {
	echo -ne "\e[5 q"
}

zle -N zle-keymap-select
zle -N zle-line-init
echo -ne "\e[5 q"

# Ctrl+f to pushd using fzf
bindkey -s '^f' '^upushd "$(dirname "$(fzf)")"\n'

# Ctrl+o to pushd using lf
function lfcd() {
	local tmp="$(mktemp -uq)"

	trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
	lf -last-dir-path="$tmp" "$@"

	if [ -f "$tmp" ]; then
		local dir="$(cat "$tmp")"
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && pushd "$dir"
	fi
}

bindkey -s '^o' '^ulfcd\n'

# Ctrl+p to popd
bindkey -s '^p' '^upopd\n'

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Starship prompt
eval "$(starship init zsh)"

# Transient prompt
function zle-line-init() {
	emulate -L zsh

	[[ $CONTEXT == start ]] || return 0

	while true; do
		zle .recursive-edit
		local -i ret=$?
		[[ $ret == 0 && $KEYS == $'\4' ]] || break
		[[ -o ignore_eof ]] || exit 0
	done

	local saved_prompt=$PROMPT
	local saved_rprompt=$RPROMPT

	PROMPT=$(starship module -s ${STARSHIP_CMD_STATUS:-0} character)
	RPROMPT=''
	zle .reset-prompt
	PROMPT=$saved_prompt
	RPROMPT=$saved_rprompt

	if (( ret )); then
		zle .send-break
	else
		zle .accept-line
	fi
	
	return ret
}

zle -N zle-line-init
