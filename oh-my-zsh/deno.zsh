export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Loading completions
# This part was taken from OhMyZsh's Deno plugin : https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/deno/deno.plugin.zsh

# COMPLETION FUNCTION
if (( ! $+commands[deno] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `deno`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_deno" ]]; then
  typeset -g -A _comps
  autoload -Uz _deno
  _comps[deno]=_deno
fi

# TODO: seems to be running on every shell startup, probably optimizable
deno completions zsh >| "$ZSH_CACHE_DIR/completions/_deno" &|