source ~/.local/share/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if [ -x /opt/homebrew/bin/brew ]; then
	source <(/opt/homebrew/bin/brew shellenv)
fi

source ~/kube-ps1/kube-ps1.sh
KUBE_PS1_SYMBOL_ENABLE=false
PROMPT='$(kube_ps1)'$PROMPT

stern() {
	unfunction stern
	source <(stern --completion zsh)
	command stern "$@"
}

source <(fzf --zsh)

alias activate='source .venv/bin/activate'

if command -v nerdctl &> /dev/null; then
	alias docker=nerdctl
fi

alias kdk='kubectl diff -k'
alias kak='kubectl apply -k'
alias kgew='kubectl get events -w'
alias kgnowide='kubectl get nodes -o wide'
alias kgawide='kubectl get all -o wide'
alias krr='kubectl rollout restart'
alias krs='kubectl rollout status'
alias krun='kubectl run -it --rm --restart=Never --image-pull-policy=IfNotPresent --image=curlimages/curl curl-$RANDOM-$$ -- sh'
alias keit='kubectl exec -it'
# alias kgponode='kubectl get po -o wide -A --field-selector spec.nodeName='

if which explorer.exe 2> /dev/null >&2; then
	alias open=explorer.exe
fi
