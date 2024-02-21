# my_tmux
#
# Auto open tmux sessions when an empty .tmux file
# is present. The Tmux session name will be the directory name.

# early return if tmux is not present
command -v tmux &>/dev/null || return

# I want to open tmux when:
#  - The current directory has a .tmux file
#  - I'm in already in a tmux session
_my_tmux_hook() {
  if [ -f .tmux ] && [ -z $TMUX ]; then
    tmux new-session -s $(basename $(pwd))
  fi
}

# Loading hook function into chpwd special function
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions
autoload -U add-zsh-hook
add-zsh-hook chpwd _my_tmux_hook
