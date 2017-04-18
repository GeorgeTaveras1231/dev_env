#! /usr/bin/env bash
project_root=$(git rev-parse --show-toplevel)

ln -s $project_root/tmux/tmux.conf $HOME/.tmux.conf
