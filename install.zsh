
source antibody.zsh 

if [ ! -f "$ANTIBODY_FILE" ]; then
    plug()
    LINE="source $ANTIBODY_FILE"
    grep -qF -- "$LINE" "$HOME/.zshrc" || echo "$LINE" >> "$HOME/.zshrc"
fi
