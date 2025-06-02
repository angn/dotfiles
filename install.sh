ln -sf ~/dotfiles/gitignore ~/.gitignore
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/my.cnf ~/.my.cnf
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/zimrc ~/.zimrc
ln -sf ~/dotfiles/tmux ~/.local/bin/tmux
ln -sf ~/dotfiles/kmux ~/.local/bin/kmux
echo 'source ~/dotfiles/aliases' >> ~/.zshrc
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
