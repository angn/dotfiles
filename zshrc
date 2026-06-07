if [ ! -f ~/.local/share/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]; then
	git clone --depth=1 --single-branch https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.local/share/fast-syntax-highlighting
fi
source ~/.local/share/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

source ~/kube-ps1/kube-ps1.sh
KUBE_PS1_SYMBOL_ENABLE=false
PROMPT='$(kube_ps1)'$PROMPT

stern() {
	unfunction stern
	source <(stern --completion zsh)
	command stern "$@"
}

source <(fzf --zsh)

source ~/dotfiles/aliases
