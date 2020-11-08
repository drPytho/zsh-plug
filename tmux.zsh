
# Start tmux if not already started
if [ "$TMUX" = "" ]; then 
    if command -v tmux &> /dev/null
    then
        tmux;
        exit
    fi
fi
