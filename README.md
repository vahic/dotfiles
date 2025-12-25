# Installation

### Requirements

- Install [Cascadia Code font](https://github.com/microsoft/cascadia-code/releases)
- Install ZSH & [Oh My ZSH](https://ohmyz.sh/#install)
- Install [zoxide](https://github.com/ajeetdsouza/zoxide)
- Install [Ghostty](https://ghostty.org/docs/install/binary)

### Font install
> These instructions are for Fedora, based on https://docs.fedoraproject.org/en-US/quick-docs/fonts/#unpackaged

```zsh
unzip CascadiaCode-2407.24.zip -d CascadiaCode && \
sudo mkdir -p /usr/local/share/fonts/cascadia-code && \
sudo mv CascadiaCode/ttf/*.ttf /usr/local/share/fonts/cascadia-code && \
sudo chown -R root: /usr/local/share/fonts/cascadia-code && \
sudo chmod 644 /usr/local/share/fonts/cascadia-code/* && \
sudo restorecon -vFr /usr/local/share/fonts/cascadia-code && \
sudo fc-cache -v

# Optional directory cleanup
rm -rf CascadiaCode*
```

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

- Audit Oh My ZSH to see if it is still usefull and consider replacements ([Zephyr](https://github.com/mattmc3/zephyr) ?) or [nothing](https://www.youtube.com/watch?v=bTLYiNvRIVI)
- Try [Starsip prompt](https://github.com/starship/starship) to replace Powerlevel10k
- If the requirements become more complex (mutliple distros, etc), take a look at [chezmoi](https://www.chezmoi.io/)
