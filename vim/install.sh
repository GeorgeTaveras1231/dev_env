#! /usr/bin/env sh
project_root=$(git rev-parse --show-toplevel)

# Pre-requisites
mkdir -p $HOME/.vim/scripts

# Install plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "$project_root/vim/vimrc" $HOME/.vimrc
ln -s "$project_root/vim/plugins.vim" $HOME/.vim/scripts/plugins.vim
ln -s "$project_root/vim/mappings.vim" $HOME/.vim/scripts/mappings.vim

ln -s "$project_root/vim/ftplugin" $HOME/.vim/ftplugin

vim +PlugInstall +qall -u $HOME/.vim/scripts/plugins.vim
vim +VimProcInstall +qall -u $HOME/.vim/scripts/plugins.vim

