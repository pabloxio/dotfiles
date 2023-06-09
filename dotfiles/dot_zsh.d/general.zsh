# vim: ft=zsh

# Parking command
bindkey '^q' push-line
# Custom Binding
bindkey "^]" fzf-cd-widget

# History
#
# ensures that commands are added to the history immediately
# rather than waiting until the shell exits
setopt INC_APPEND_HISTORY
#
# skip duplicates and show each command only once
setopt HIST_FIND_NO_DUPS
#
# skip writing duplicates to the history file
setopt HIST_IGNORE_ALL_DUPS
#
# skip commands that start with a space
setopt HIST_IGNORE_SPACE


#
# oh-my-zsh
#
# Disable auto update, chezmoi will handle it
export DISABLE_AUTO_UPDATE="true"
#
# Plugins config
#
# vi-mode
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

#
# general environment variables
#
export EDITOR=nvim
export ANSIBLE_NOCOWS=1
export PIPENV_VENV_IN_PROJECT=1
export SAM_CLI_TELEMETRY=0
