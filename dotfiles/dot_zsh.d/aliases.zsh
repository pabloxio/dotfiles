# Bat - a cat clone with wings
# https://github.com/sharkdp/bat
if which bat >/dev/null; then
  alias cat='bat'
fi

if which kubectl >/dev/null; then
  alias kube='kubectl'
fi
