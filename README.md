# Installation

### Requirements

- Install ZSH & [Oh My ZSH](https://ohmyz.sh/#install)
- Install [zoxide](https://github.com/ajeetdsouza/zoxide)
- Install [Ghostty](https://ghostty.org/docs/install/binary)

### Dotfiles config
Clone the repo

```zsh
git clone git@github.com:vahic/dotfiles.git ~/.dotfiles
```

Load the config in ~/.zshrc :

```zsh
export DOTFILES="$HOME/.dotfiles"
source "$DOTFILES/init.zsh"
```

Link the Ghostty config with

```zsh
ln -s ~/.dotfiles/ghostty ~/.config/ghostty
```

Then restart the Ghostty


### SSH Agent config

If `ssh-agent` is not initialized out-of-the box by the distro, add this to `~/.xsession` :

```sh
eval $(ssh-agent)
``` 

This will start ssh-agent globally for the graphical session so it's not only available in the terminal emulator but also for programs like PHPStorm.

### TODO

- Audit Oh My ZSH to see if it is still usefull and consider replacements ([Zephyr](https://github.com/mattmc3/zephyr) ?)
