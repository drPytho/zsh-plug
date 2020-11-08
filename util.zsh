
function http-server() {
   python -m http.server ${1:-8000}
}

function voiimage() {
    gcloud container images list-tags eu.gcr.io/voi-stage/$1 | awk '{print $2}' | sd ',' '\n' | rg 'v[0-9\.]+' | sort -V | tail -n  1
}

