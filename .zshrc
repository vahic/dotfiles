# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/.dotfiles"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$DOTFILES/oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Source Antibody's plugin build
ANTIBODY_BUILD="$DOTFILES/antibody/plugins.sh"
# Build Antibody's plugin file if it does not exist
[[ ! -f $ANTIBODY_BUILD ]] && antibody-build
source $ANTIBODY_BUILD
unset ANTIBODY_BUILD

export EDITOR="vim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $DOTFILES/.p10k.zsh ]] || source $DOTFILES/.p10k.zsh
