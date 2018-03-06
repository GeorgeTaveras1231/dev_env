#! /usr/bin/env sh

# Install dependencies

which brew
if [[ $? = 0 ]]; then
  echo "Installing dependencies..."
  brew update
  brew install git tmux vim the_silver_searcher watch
fi

echo "Installing tmux"
./tmux/install.sh

echo "Installing vim"
./vim/install.sh
