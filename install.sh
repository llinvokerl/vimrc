#!/bin/bash
cd "$(dirname "$0")"
ln -s `pwd`/.vimrc ~/.vimrc
sudo apt-get update && sudo apt-get install git ctags -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u NONE +PluginInstall +qall
