alias v=nvim
alias svi="sudo -E -s nvim"

alias gl="git pull"
alias gp="git push --verbose"
alias gcl='git clone --recurse-submodules'
alias gst="git status --short"
alias gup="git pull --rebase"
alias gsta="git stash push"
alias gstp="git stash pop"
alias gaa="git add --all"
alias ga="git add"
alias gpv="git push -v"
alias gcsm="git commit -m"

alias bell="tput bel"
alias make="make -j"

mkcd() {
	mkdir -p $@ && cd ${@:$#}
}
