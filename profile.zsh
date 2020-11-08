# Helper function
function atp() {
    export PATH="$1:$PATH"
}

# Theme
ZSH_THEME="dst"

# Golang
export GOPATH=$HOME/workspace/golang
export GOROOT=/usr/lib/go
export GOBIN=$GOPATH/bin
export GOPRIVATE="github.com/voiapp"

atp $GOROOT/bin
atp $GOPATH/bin

# Personal bins
atp $HOME/.local/bin

