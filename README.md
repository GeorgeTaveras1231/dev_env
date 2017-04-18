## Shortcuts

### Vim Shortcuts
* `space` is the leader for most custom commands

| Shortcut | Description |
|----------|-------------|
| `space` `ev` | Edit vimrc |
| `shift` `\` | Toggle Nerd Tree visibility, See help by typing `?` |
| `space` `w` | Save current file |
| `space` `y` | Copy to system clipboard |
| `space` `p` | Paste from system clipboard |
| `space` `e` | Refresh current pane/window |
| `space` `o` | Fuzzy file finder |
| `space` `space` | Cancel highlight |

### Tmux Shortcuts
* `C-a` is the leader for most custom commands

| Shortcut | Description |
|----------|-------------|
| `C-a` `a` | Enter copy mode, use vi keys to navigate |
| `C-a` `g` | Open git status pane, requires `watch` command |
| `C-a` `shift`+ vi-keys | Resize current pane |
| `C-a` `C-s` | Toggle sync mode |

## TODO
- [ ] Expand custom shortcut list

## Dependencies
* tmux
* vim
* git

### Mac OS X
* Use `brew` to install dependencies

```
brew update
brew install git tmux vim the_silver_searcher
```

## Setup
* Clone this repository into your code directory.

```
git clone git@github.com:GeorgeTaveras1231/dev_env.git
```

### Dry-run

Before running the install script, run the dry run script and make sure everything checks off

The dry run output should look like:

```
/Users/you/code/dev_env/stubs/brew
Installing dependencies...
Updating brew...dup dip dap dip doop.
Installing dependencies...dup dip dap dip doop.
Dependencies:  [ 'git', 'tmux', 'vim', 'the_silver_searcher' ]
Installing tmux
Creating link:  [ '-s',
  '/Users/you/code/dev_env/tmux/tmux.conf',
  '/Users/you/.tmux.conf' ]
Installing vim
Making directory:  [ '-p', '/Users/you/.vim/scripts' ]
Fetching with curl:  [ '-fLo',
  '/Users/you/.vim/autoload/plug.vim',
  '--create-dirs',
  'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' ]
Creating link:  [ '-s',
  '/Users/you/code/dev_env/vim/vimrc',
  '/Users/you/.vimrc' ]
Creating link:  [ '-s',
  '/Users/you/code/dev_env/vim/plugins.vim',
  '/Users/you/.vim/scripts/plugins.vim' ]
Creating link:  [ '-s',
  '/Users/you/code/dev_env/vim/mappings.vim',
  '/Users/you/.vim/scripts/mappings.vim' ]
Creating link:  [ '-s',
  '/Users/you/code/dev_env/vim/ftplugin',
  '/Users/you/.vim/ftplugin' ]
Vim command:  [ '+PlugInstall',
  '+qall',
  '-u',
  '/Users/you/.vim/scripts/plugins.vim' ]
Vim command:  [ '+VimProcInstall',
  '+qall',
  '-u',
  '/Users/you/.vim/scripts/plugins.vim' ]
```

### Installation
* Run the `install.sh` script provided

```
cd dev_env
./install.sh
```

## Verify Setup

### Verify Vim
* Start `vim` and observe new color scheme
* `esc` and arrow keys are no longer mapped...must use `jk` and `hjkl` keys, respectively.

### Verify tmux
* Start `tmux` and observe new status bar at the bottom of terminal window.
