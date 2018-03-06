#! /usr/bin/env sh
project_root=$(git rev-parse --show-toplevel)

ln -s $project_root/git/gitconfig $HOME/.gitconfig
ln -s $project_root/git/gitaliases $HOME/.gitaliases
