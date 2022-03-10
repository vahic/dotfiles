# Installation

### Prerequisites

- Install ZSH & [Oh My ZSH](https://ohmyz.sh/#install)
- Install [antibody](https://getantibody.github.io/install/)
- Install [zoxide](https://github.com/ajeetdsouza/zoxide) 
- Install `xclip`

### Dotfiles config
```sh
git clone git@github.com:vahic/dotfiles.git ~/.dotfiles
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
zsh #or restart terminal
```

### SSH Agent config

If `ssh-agent` is not initialized out-of-the box by the distro, add this to `~/.xsession` :

```sh
eval $(ssh-agent)
``` 

This will start ssh-agent globally for the graphical session so it's not only available in the terminal emulator but also for programs like PHPStorm.

### TODO

- Try loading only required oh-my-zsh files instead of the whole framework
- Add a script to automatically run "antibody update" periodically
