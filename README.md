## Shortcuts

### Vim Shortcuts
* `space` is the leader for most custom commands

| Shortcut | Description |
|----------|-------------|
| `space` `ev` | Edit vimrc |
| `shift` `\` | Toggle Nerd Tree visibility |
| `space` `w` | Save current file |

### Tmux Shortcuts

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
brew install git tmux vim
```

## Setup
* Clone this repository into your code directory.

```
git clone git@github.com:GeorgeTaveras1231/dev_env.git
```

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

