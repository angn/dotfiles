#!/bin/zsh -eux

ln -vsnf ~/dotfiles/gitignore ~/.gitignore
ln -vsnf ~/dotfiles/gitconfig ~/.gitconfig
ln -vsnf ~/dotfiles/my.cnf ~/.my.cnf
ln -vsnf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -vsnf ~/dotfiles/vimrc ~/.vimrc
ln -vsnf ~/dotfiles/zimrc ~/.zimrc
ln -vsnf ~/dotfiles/tssh ~/.local/bin/tssh
ln -vsnf ~/dotfiles/kmux ~/.local/bin/kmux

if [ ! -f ~/.zim/zimfw.zsh ]; then
	curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
fi

if [ ! -d ~/.local/share/fast-syntax-highlighting ]; then
	git clone --depth=1 --single-branch https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.local/share/fast-syntax-highlighting
fi

if [ ! -d ~/kube-ps1 ]; then
	git clone --depth=1 --single-branch https://github.com/jonmosco/kube-ps1 ~/kube-ps1
fi

if [ "$(uname -s)" = Darwin ]; then
	brew --version || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
fi

mise --version || curl -fsS https://mise.run | sh
mise cfg set settings.idiomatic_version_file_enable_tools --type=list node,ruby
mise use --global fzf rg k9s stern

curl -fsSLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
