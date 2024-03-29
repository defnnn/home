function gs {
	git status -sb "$@"
}

function vi {
	if [[ -n "${VSCODE_GIT_IPC_HANDLE:-}" ]]; then
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

# pipx
PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# asdf
. $HOME/.asdf/asdf.sh

# rancher
PATH="$HOME/.rd/bin:$PATH"

# vscode
if [[ -n "${VSCODE_GIT_IPC_HANDLE:-}" ]]; then
	export VISUAL="code --wait"
fi

# gpg-agent ssh socket
SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK

# macos python
PATH="$HOME/Library/Python/3.8/bin:$PATH"

# homebrew
PATH="$PATH:/opt/homebrew/bin"

# nix
export NIXPKGS_ALLOW_UNSUPPORTED_SYSTEM=1
PATH="$HOME/.nix-profile/bin:$PATH"
if test -f ~/.nix-profile/etc/profile.d/nix.sh;then
	source ~//.nix-profile/etc/profile.d/nix.sh
fi

# bash
export BASH_SILENCE_DEPRECATION_WARNING=1

# direnv
export DIRENV_LOG_FORMAT=

if type -P direnv >/dev/null; then
	eval "$(direnv hook bash)"
	_direnv_hook
	unset DIRENV_DIFF DIRENV_WATCHES
fi

# powerline-go
if tty >/dev/null; then
  if type -P powerline-go >/dev/null; then
	function render_ps1 {
		echo
		powerline-go --colorize-hostname -mode flat -newline \
			-priority root,cwd,user,host,ssh,perms,git-branch,exit,cwd-path,git-status \
			-modules host,ssh,cwd,perms,gitlite,load,exit,venv
	}

	function update_ps1 {
		PS1="$(render_ps1)"
	}

    PROMPT_COMMAND="update_ps1"
  fi
fi

if type -P direnv >/dev/null; then
	eval "$(direnv hook bash)"
fi

