function gs {
	git status -sb "$@"
}

function vi {
	if [[ -n "${VSCODE_GIT_IPC_HANDLE=:-}" ]]; then
		command code "$@"
	else
		command vi "$@"
	fi
}

function pc {
	pre-commit "$@"
}

function pca {
	pre-commit run --all "$@"
}

# asdf
. $HOME/.asdf/asdf.sh

# pipx
PATH="$HOME/.local/bin:$PATH"

# vscode
if [[ -n "${VSCODE_GIT_IPC_HANDLE=:-}" ]]; then
	export VISUAL="code --wait"
fi

# gpg-agent ssh socket
SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK

# macos python
PATH="$HOME/Library/Python/3.8/bin:$PATH"

