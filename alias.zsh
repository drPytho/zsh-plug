##
# Ailias
##
# Good to have
alias week="date +%V"
alias reload="exec $SHELL -l"
alias v="nvim"

function f() {
    v `fd --type f -E vendor | fzf -i`
}

alias py="python3"
alias copy="xclip -selection clipboard"
alias paste="xclip -selection clipboard -o"

alias ls=""
alias l=""
alias e="exa"
alias ea="exa -la"
alias et="exa -T"

alias k="kubectl"
alias ka="kubectl apply -f"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kl="kubectl logs"
function kll() {
    kubectl logs -f -l app=$1
}

alias g="git"
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"

alias bat='/usr/bin/bat'

alias open=xdg-open

# Good to have
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
