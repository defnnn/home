#!/usr/bin/env bash

function main {
    echo 'defn.dev'
    echo '---'
    echo 'devcontainer | terminal=true | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://dev-container+2f55736572732f6465666e2f776f726b2f646576/home/ubuntu"'
    echo 'vscode imac  | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://k8s-container+context=k3d-imac+namespace=imac+podname=imac+name=defn+image=meh+/home/ubuntu"'
    echo 'vscode mini  | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://k8s-container+context=k3d-mini+namespace=mini+podname=mini+name=defn+image=meh+/home/ubuntu"'
    echo 'vscode mbpro | terminal=false | shell=/usr/local/bin/code | param1="--folder-uri" | param2="vscode-remote://k8s-container+context=k3d-mbpro+namespace=mbpro+podname=mbprod+name=defn+image=meh+/home/ubuntu"'
}

main "$@"