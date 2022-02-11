. $HOME/.asdf/asdf.sh

SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK

function gs {
	git status -sb "$@"
}

function vi {
	if [[ -n "${VSCODE_PID:-}" ]]; then
		command code "$@"	
	else
		command vi "$@"
	fi
}
