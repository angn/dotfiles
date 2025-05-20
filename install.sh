#!/bin/bash -eux
ln -s ~/conf/gitignore ~/.gitignore
ln -s ~/conf/gitconfig ~/.gitconfig
ln -s ~/conf/my.cnf ~/.my.cnf
ln -s ~/conf/tmux.conf ~/.tmux.conf
ln -s ~/conf/vimrc ~/.vimrc
ln -s ~/conf/zimrc ~/.zimrc
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
