# vim: ft=zsh

# Parking command
bindkey '^q' push-line
# Custom Binding
bindkey "^]" fzf-cd-widget

# History
# ensures that commands are added to the history immediately
setopt INC_APPEND_HISTORY
# skip duplicates and show each command only once
setopt HIST_FIND_NO_DUPS
# skip writing duplicates to the history file
setopt HIST_IGNORE_ALL_DUPS
