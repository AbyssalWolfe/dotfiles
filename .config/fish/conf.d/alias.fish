#  █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
# ███████║██║     ██║███████║███████╗█████╗  ███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
# ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gba="git branch --all"
alias gbd="git branch --delete"
alias gbm="git branch --move"
alias gbr="git branch --remote"
alias gbsup="git branch --set-upstream-to=origin/$(git_branch current)"
alias gc="git commit -s"
alias gcd="git checkout $(git_branch develop)"
alias gcm="git checkout $(git_branch master)"
alias gco="git checkout"
alias gcor="git checkout --recurse-submodules"
alias gd="git diff"
alias gf="git fetch"
alias gfa="git fetch --all --prune"
alias gfo="git fetch origin"
alias gl="git pull"
alias glo="git pull origin $(git_branch current)"
alias glr="git pull --rebase"
alias glra="git pull --rebase --autostash"
alias glrom="git pull --rebase origin $(git_branch master)"
alias glromi="git pull --rebase=interactive origin $(git_branch master)"
alias gluc="git pull upstream $(git_branch current)"
alias glum="git pull upstream $(git_branch master)"
alias gm="git merge"
alias gma="git merge --abort"
alias gmom="git merge origin/$(git_branch master)"
alias gmum="git merge upstream/$(git_branch master)"
alias gms="git merge --squash"
alias gp="git push"
alias gpd="git push --dry-run"
alias gpo="git push origin $(git_branch current)"
alias gposu="git push --set-upstream origin $(git_branch current)"
alias gpoat="git push origin --all && git push origin --tags"
alias gpod="git push origin --delete"
alias gpu="git push upstream"
alias grb="git rebase"
alias grbd="git rebase $(git_branch develop)"
alias grbm="git rebase $(git_branch master)"
alias grbom="git rebase origin/$(git_branch master)"
alias gr="git remote"
alias gra="git remote add"
alias gre="git reset"
alias grev="git revert"
alias grh="git reset --hard"
alias grk="git reset --keep"
alias grm="git rm"
alias grmc="git rm --cached"
alias grmv="git remote rename"
alias groh="git reset origin/$(git_branch current) --hard"
alias grrm="git remote remove"
alias grs="git reset --soft"
alias grset="git remote set-url"
alias grup="git remote update"
alias gru="git reset --"
alias gs="git status"
alias gsh="git show"
alias gsmi="git submodule init"
alias gsmu="git submodule update"
alias gsta="git stash apply"
alias gstal="git stash --all"
alias gstc="git stash clear"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gstpu="git stash push"
alias gsts="git stash show --patch"
alias gstu="git stash --include-untracked"
alias gsw="git switch"
alias gswc="git switch -c"
alias gswd="git switch $(git_branch develop)"
alias gswm="git switch $(git_branch master)"
alias gta="git tag --annotate"
alias gts="git tag -s"
alias gtv="git tag | sort -V"
alias gwt="git worktree"
alias l="lsd -a"
alias ll="lsd -la"
alias lfc="lfcd"
if test -e /etc/os-release
	switch (grep -oP "(?<=^ID=).+" /etc/os-release | tr -d '"')
		case arch manjaro steamos
			if command -q paru
				alias pkgi="paru -S"
				alias pkgr="paru -Rnsc"
				alias pkgs="paru -Ss"
				alias pkgu="paru -Syu"
			else
				alias pkgi="sudo pacman -S"
				alias pkgr="sudo pacman -Rnsc"
				alias pkgs="sudo pacman -Ss"
				alias pkgu="sudo pacman -Syu"
			end
		case debian ubuntu
			alias pkgi="sudo apt update && sudo apt install"
			alias pkgr="sudo apt remove"
			alias pkgs="sudo apt update && sudo apt search"
			alias pkgu="sudo apt update && sudo apt upgrade"
		case fedora
			alias pkgi="sudo dnf install"
			alias pkgr="sudo dnf remove"
			alias pkgs="sudo dnf search"
			alias pkgu="sudo dnf upgrade"
	end
end
alias v="$EDITOR"
alias x="atool -x"
