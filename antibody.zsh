
plugins+=(
    'drpytho/zsh-plug'
    'zsh-users/zsh-syntax-highlighting'
    'zsh-users/zsh-history-substring-search'
    'denysdovhan/spaceship-prompt'
)

ANTIBODY_FILE="$HOME/.zsh_plug"

function plug() {
    echo $plugins | tr ' ' '\n' | sort -u | antibody bundle > $ANTIBODY_FILE
    antibody update
    source $ANTIBODY_FILE
}


# Install 
if [ ! -f "$ANTIBODY_FILE" ]; then
    plug
    LINE="source $ANTIBODY_FILE"
    grep -qF -- "$LINE" "$HOME/.zshrc" || echo "$LINE" >> "$HOME/.zshrc"
fi
