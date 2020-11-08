
plugins+=(
    'drpytho/zsh-plug'
)

ANTIBODY_FILE="$HOME/.zsh_plug"

function plug() {
    echo $plugins | tr ' ' '\n' | sort -u | antibody bundle > $ANTIBODY_FILE
    antibody update
    source $ANTIBODY_FILE
}


