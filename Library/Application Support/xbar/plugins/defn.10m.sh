#!/usr/bin/env bash

function main {
    echo 'defn.dev'
    echo '---'
    echo 'vscode imac  | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://k8s-container+context=k3d-imac+namespace=imac+podname=imac+name=defn+image=meh+/home/ubuntu"'
    echo 'vscode mini  | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://k8s-container+context=k3d-mini+namespace=mini+podname=mini+name=defn+image=meh+/home/ubuntu"'
    echo 'vscode mbpro | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://k8s-container+context=k3d-mbpro+namespace=mbpro+podname=mbprod+name=defn+image=meh+/home/ubuntu"'
}

main "$@"