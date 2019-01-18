!#/bin/bash

sudo apt install git zsh tmux neovim build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev fonts-firacode remmina
# libcurses5-dev no longer seems to be available. It's caused no
# problems so far

mkdir ~/project
cd ~/project
git clone https://github.com/effseven/dotfiles.git 
cd ~
ln -s ~/project/dotfiles/zshrc .zshrc
ln -s ~/project/dotfiles/dotconfig/nvim .config/nvim
ln -s ~/project/dotfiles/tmux.conf .tmux.conf
mkdir ~/bin
curl -L git.io/antigen > bin/antigen.zsh
chsh -s /bin/zsh

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
export PATH=~/bin:$PATH:~/.pyenv/bin:~/.pyenv/shims
pyenv install 3.7.1
pyenv global 3.7.1
pip install neovim
pip install black

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add - echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list sudo apt update && sudo apt install signal-desktop

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Add the following pieces of software
# slack
# keepassxc
# dropbox
# pcloud
# zoom

