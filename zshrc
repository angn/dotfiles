source ~/.local/share/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if [ -f ~/kube-ps1/kube-ps1.sh ]; then
	source ~/kube-ps1/kube-ps1.sh
else
	source "$HOMEBREW_PREFIX/opt/kube-ps1/share/kube-ps1.sh"
fi
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

if command -v explorer.exe &> /dev/null; then
	alias open=explorer.exe
fi
