#!/usr/bin/env bash

function main {
    echo 'defn.dev'
    echo '---'
    echo 'devcontainer | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://dev-container+2f55736572732f6465666e2f776f726b2f646576/home/ubuntu"'
    echo "vscode | terminal=false | shell=/usr/local/bin/code | param1='--folder-uri' | param2='code --folder-uri file://${HOME}/work'"
    for k3d in $(/usr/local/bin/k3d cluster list | awk 'NR > 1 {print $1}'); do
        echo "vscode local ${k3d} | terminal=false | shell=/usr/local/bin/code | param1='--folder-uri' | param2='vscode-remote://k8s-container+context=k3d-${k3d}+namespace=${k3d}+podname=${k3d}+name=defn+image=remote+/home/ubuntu'"
    done
    for k3d in mini imac mbpro; do
        echo "vscode remote ${k3d} | terminal=false | shell=/usr/local/bin/code | param1='--folder-uri' | param2='vscode-remote://k8s-container+context=k3d-${k3d}+namespace=${k3d}+podname=${k3d}+name=defn+image=remote+/home/ubuntu'"
    done
}

main "$@"