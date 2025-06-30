#!/bin/bash -eux
ln -vsnf ~/dotfiles/gitignore ~/.gitignore
ln -vsnf ~/dotfiles/gitconfig ~/.gitconfig
ln -vsnf ~/dotfiles/my.cnf ~/.my.cnf
ln -vsnf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -vsnf ~/dotfiles/vimrc ~/.vimrc
ln -vsnf ~/dotfiles/zimrc ~/.zimrc
ln -vsnf ~/dotfiles/tssh ~/.local/bin/tssh
ln -vsnf ~/dotfiles/kmux ~/.local/bin/kmux
grep -qxF 'source ~/dotfiles/aliases' ~/.zshrc || echo 'source ~/dotfiles/aliases' >> ~/.zshrc
zimfw --version || curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
curl -fsSLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew --version || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
brew install mise kube-ps1
mise cfg set settings.idiomatic_version_file_enable_tools --type=list node,ruby
