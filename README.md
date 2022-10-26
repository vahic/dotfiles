# Installation

### Requirements

- Install ZSH & [Oh My ZSH](https://ohmyz.sh/#install)
- Install [zoxide](https://github.com/ajeetdsouza/zoxide)

### Dotfiles config
Clone the repo

```zsh
git clone git@github.com:vahic/dotfiles.git ~/.dotfiles
```

Then load the config in ~/.zshrc :

```zsh
export DOTFILES="$HOME/.dotfiles"
source "$DOTFILES/init.zsh"
```

Then restart the terminal

### SSH Agent config

If `ssh-agent` is not initialized out-of-the box by the distro, add this to `~/.xsession` :

```sh
eval $(ssh-agent)
``` 

This will start ssh-agent globally for the graphical session so it's not only available in the terminal emulator but also for programs like PHPStorm.

### TODO

- Audit Oh My ZSH to see if it is still usefull and consider replacements ([Zephyr](https://github.com/mattmc3/zephyr) ?)
- Try to find a way to periodically run "phpenv rehash" instead of running it on each startup
