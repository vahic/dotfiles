export PHPENV_ROOT="$HOME/.phpenv"

if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="$PHPENV_ROOT/bin:$PATH"
  # Add PHP shims to the path
  export PATH="$PHPENV_ROOT/shims:$PATH"
  # Source autocompletion for phpenv
  source "$HOME/.phpenv/libexec/../completions/phpenv.zsh"

  phpenv rehash 2>/dev/null
fi
