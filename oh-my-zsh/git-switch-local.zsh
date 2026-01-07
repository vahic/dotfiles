# Shell function for git sw, to autocomplete only local branches
git-sw() {
  git switch --no-guess "$@"
}

_git_sw_complete() {
  local branches
  branches=(${(f)"$(git for-each-ref --format='%(refname:short)' refs/heads 2>/dev/null)"})
  compadd -- $branches
}

compdef _git_sw_complete git-sw