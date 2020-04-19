git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/^/:/'
}

export PS1="\[\e[01;32m\]\w\[\033[00;34m\]\$(git_branch)\[\033[00m\]\$ "
