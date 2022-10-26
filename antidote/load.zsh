# Based on https://getantidote.github.io/install#ultra-high-performance-install

antidote_dir="$HOME/.antidote"

plugins_txt="$DOTFILES/antidote/plugins.txt"
static_file="$DOTFILES/antidote/plugins.zsh"

# Clone antidote if necessary and generate a static plugin file, if the plugin file is more recent than the static file
if [[ ! $static_file -nt $plugins_txt ]]; then
  [[ -e $antidote_dir ]] ||
    git clone --depth=1 https://github.com/mattmc3/antidote.git $antidote_dir
  (
    source $antidote_dir/antidote.zsh
    [[ -e $plugins_txt ]] || touch $plugins_txt
    antidote bundle <$plugins_txt >$static_file
  )
fi

# Uncomment this if you want antidote commands like `antidote update` available
# in your interactive shell session:
# autoload -Uz $antidote_dir/functions/antidote

# source the static plugins file
source $static_file

# cleanup
unset antidote_dir plugins_txt static_file