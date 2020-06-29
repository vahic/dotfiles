# Installation

### Prerequisites

- Install [antibody](https://getantibody.github.io/install/).
- Install [autojump-rs](https://github.com/xen0n/autojump-rs) (or the original [autojump](https://github.com/wting/autojump))
- Install `xclip`

### Dotfiles config
```sh
git clone git@github.com:Vahlay/dotfiles.git ~/.dotfiles
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