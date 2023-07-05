# vim: ft=zsh

# GOBIN is used by go install
export GOBIN="${HOME}/go/bin"
export PATH="${PATH}:${GOBIN}"
if [ ! -d "${GOBIN}" ]; then
    mkdir -p ${GOBIN}
fi

# Explicit go.mod include
# https://github.com/kennyp/asdf-golang#version-selection
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

# Disable Go Toolchain auto-download from 1.21
# https://utcc.utoronto.ca/~cks/space/blog/programming/Go121ToolchainDownloads
export GOTOOLCHAIN=local
