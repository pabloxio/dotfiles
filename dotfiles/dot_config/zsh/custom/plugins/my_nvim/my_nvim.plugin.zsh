# my_nvim
#
# Auto open neovim if there is a .tmux file in the parent directory
# and if I'm in a tmux session

# early return if neovim is not present
command -v nvim &>/dev/null || return

# I want to open neovim when:
#  - The parent directory has a .tmux file (my_tmux custom plugin)
#  - I'm in a tmux session
#  - I'm not already in a neovim session
_my_nvim_hook() {
  if [ -f ../.tmux ] && [ ! -z $TMUX ] && [ -z $NVIM ]; then

    # Activate virtualenv if present so Neovim LSP diagnostics doesn't complain
    if  [ -f .venv/bin/activate ]; then
      . .venv/bin/activate
    fi

    nvim
  fi
}

# Loading hook function into chpwd special function
autoload -U add-zsh-hook
add-zsh-hook chpwd _my_nvim_hook
