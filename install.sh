#!/bin/zsh -eux

ln -vsnf ~/dotfiles/gitignore ~/.gitignore
ln -vsnf ~/dotfiles/gitconfig ~/.gitconfig
ln -vsnf ~/dotfiles/my.cnf ~/.my.cnf
ln -vsnf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -vsnf ~/dotfiles/vimrc ~/.vimrc
ln -vsnf ~/dotfiles/zimrc ~/.zimrc
ln -vsnf ~/dotfiles/tssh ~/.local/bin/tssh
ln -vsnf ~/dotfiles/kmux ~/.local/bin/kmux

if [ "$(uname -s)" = Darwin ]; then
	command -v brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
	brew install zimfw zsh-fast-syntax-highlighting kube-ps1
	brew install mise fzf rg k9s stern fx uv bat
else
	if [ ! -f ~/.zim/zimfw.zsh ]; then
		curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
	fi

	if [ ! -d ~/.local/share/fast-syntax-highlighting ]; then
		git clone --depth=1 --single-branch https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.local/share/fast-syntax-highlighting
	fi

	if [ ! -d ~/kube-ps1 ]; then
		git clone --depth=1 --single-branch https://github.com/jonmosco/kube-ps1 ~/kube-ps1
	fi

	command -v mise || curl -fsS https://mise.run | sh
	mise use --global fzf rg k9s stern fx uv bat
fi

mise cfg set settings.idiomatic_version_file_enable_tools --type=list node,ruby,python

curl -fsSLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
