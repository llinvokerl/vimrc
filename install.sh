#!/bin/bash
cd "$(dirname "$0")"
ln -s `pwd`/.vimrc ~/.vimrc
sudo apt-get update && sudo apt-get install git ctags
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
