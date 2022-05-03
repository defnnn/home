#!/usr/bin/env bash

function main {
    cd
    export HOME="${HOME:-$(pwd)}"

    local devcontainer="$(printf ${HOME} | od -A n -t x1 | tr -d '[\n\t ]')"

    echo 'defn.dev'

    echo '---'

    echo "devcontainer | terminal=false | shell=${HOME}/etc/env.sh | param1='code' | param2='--folder-uri' | param3='vscode-remote://dev-container+${devcontainer}/home/ubuntu'"

    echo "macos| terminal=false | shell=${HOME}/etc/env.sh | param1='code' | param2='--folder-uri' | param3='file://${HOME}/work'"
    echo "fly| terminal=false | shell=${HOME}/etc/env.sh | param1='code' | param2='--folder-uri' | param3='vscode-remote://ssh-remote+fly/home/ubuntu'"

    for k3d in $(/usr/local/bin/k3d cluster list | awk 'NR > 1 {print $1}'); do
        echo "vscode local ${k3d} | terminal=false | shell=${HOME}/etc/env.sh | param1='code' | param2='--folder-uri' | param3='vscode-remote://k8s-container+context=k3d-${k3d}+namespace=${k3d}+podname=${k3d}+name=defn+image=remote+/home/ubuntu'"
    done

    for k3d in mini imac mbpro; do
        echo "vscode remote ${k3d} | terminal=false | shell=${HOME}/etc/env.sh | param1='code' | param2='--folder-uri' | param3='vscode-remote://k8s-container+context=k3d-${k3d}+namespace=${k3d}+podname=${k3d}+name=defn+image=remote+/home/ubuntu'"
    done
}

main "$@"