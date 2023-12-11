# Bat - a cat clone with wings
# https://github.com/sharkdp/bat
if which bat >/dev/null; then
  alias cat='bat'
fi

# aws-vault
if which aws-vault >/dev/null; then
  alias av-exec='aws-vault exec $AWSVAULT --duration=${AWSVAULT_DURATION:-1h} -- '
  alias av-creds='aws-vault exec $AWSVAULT --duration=1h -- env |grep ^AWS_ |while read line; do echo export "$line"; done'
  alias av-login='aws-vault login $AWSVAULT'
fi

if which kubectl >/dev/null; then
  if which aws-vault >/dev/null; then
    alias kube='av-exec kubectl'
  else
    alias kube='kubectl'
  fi
fi

if which k9s >/dev/null; then
  if which aws-vault >/dev/null; then
    alias k9s='av-exec k9s'
  fi
fi
