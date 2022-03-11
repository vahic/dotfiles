export PHPENV_ROOT="/home/vahic/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  # Add PHP shims to the path
  export PATH="/home/vahic/.phpenv/shims:${PATH}"
  # Source autocompletion for phpenv
  source "/home/vahic/.phpenv/libexec/../completions/phpenv.zsh"

  phpenv rehash 2>/dev/null
fi
