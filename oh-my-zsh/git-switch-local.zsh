# Shell function for git sw, to autocomplete only local branches
gsw() {
  git switch --no-guess "$@"
}

_gsw_complete() {
  local branches
  branches=(${(f)"$(git for-each-ref --format='%(refname:short)' refs/heads 2>/dev/null)"})
  compadd -- $branches
}

compdef _gsw_complete gsw