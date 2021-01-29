#!/bin/bash
cd "$(dirname "$0")"
ln -s `pwd`/.vimrc ~/.vimrc
ln -s `pwd`/.vimrc.bundles ~/.vimrc.bundles
#apt-get update && apt-get install git ctags -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ~/.vimrc.bundles +PluginInstall +GoInstallBinaries +qall
