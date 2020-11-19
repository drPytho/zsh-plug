# Helper function
function atp() {
    export PATH="$1:$PATH"
}

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$HOME/.config

export TERM="xterm-256color"
export EDITOR="nvim"
export COMPLETION_WAITING_DOTS="true"

# Golang
export GOPATH=$HOME/workspace/golang
export GOROOT=/usr/lib/go
export GOBIN=$GOPATH/bin
export GOPRIVATE="github.com/voiapp"

atp $GOROOT/bin
atp $GOPATH/bin

# Personal bins
atp $HOME/.local/bin
atp $HOME/.local/npm/bin
atp $HOME/.local/lib/google-cloud-sdk/bin

