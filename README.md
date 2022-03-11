# Installation

### Prerequisites

- Install ZSH & [Oh My ZSH](https://ohmyz.sh/#install)
- Install [antibody](https://getantibody.github.io/install/)
- Install [zoxide](https://github.com/ajeetdsouza/zoxide) 
- Install `xclip`

### Dotfiles config
```sh
git clone git@github.com:vahic/dotfiles.git ~/.dotfiles
```

Then put this is ~/.zshrc :

```zsh
export DOTFILES="$HOME/.dotfiles"
source $dotfiles/.zshrc
```

Then restart the zsh

### SSH Agent config

If `ssh-agent` is not initialized out-of-the box by the distro, add this to `~/.xsession` :

```sh
eval $(ssh-agent)
``` 

This will start ssh-agent globally for the graphical session so it's not only available in the terminal emulator but also for programs like PHPStorm.

### TODO

- Try to find a way to periodically run "phpenv rehash" instead of running it on each startup
- Add a script to automatically run "antibody update" periodically
