# my_tmux
#
# Auto open tmux sessions when an empty .tmux file
# is present. The Tmux session name will be the directory name.
#
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions

# early return if tmux is not present
command -v tmux &>/dev/null || return

_my_tmux_hook() {
  if [ -f .tmux ] && [ -z $TMUX ]; then
    tmux new-session -s $(basename $(pwd))
  fi
}

# Loading hook function into chpwd special function
autoload -U add-zsh-hook
add-zsh-hook chpwd _my_tmux_hook
