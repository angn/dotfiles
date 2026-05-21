source <(mise activate zsh)

source ~/kube-ps1/kube-ps1.sh
KUBE_PS1_SYMBOL_ENABLE=false
PROMPT='$(kube_ps1)'$PROMPT

source <(k9s completion zsh)
source <(stern --completion zsh)
source <(fzf --zsh)

source ~/dotfiles/aliases
