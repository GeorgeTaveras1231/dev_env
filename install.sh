#! /usr/bin/env bash

ln -s $(pwd)/tmux/tmux.conf $HOME/.tmux.conf

mkdir $HOME/.tmux

ln -s $(pwd)/tmux/tmux_git_branch.rb $HOME/.tmux/tmux_git_branch.rb

ln -s $(pwd)/vim/vimrc $HOME/.vimrc

ln -s $(pwd)/vim/plugins.vim $HOME/.plugins.vim
ln -s $(pwd)/vim/mappings.vim $HOME/.mappings.vim

mkdir $HOME/.vim

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

ln -s $(pwd)/vim/ftplugin $HOME/.vim/ftplugin

vim +PluginInstall +qall -u $HOME/.plugins.vim

