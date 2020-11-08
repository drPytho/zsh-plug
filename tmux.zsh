
# Start tmux if not already started
if [ "$TMUX" = "" ]; then 
    if [[ `which tmux &>/dev/null && $?` != 0 ]]; then
        tmux;
        exit
    fi
fi
