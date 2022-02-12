```
git clone git@github.com:defn/home h
mv h/.git .
rm -rf h

gpg-agent --daemon

git clone git@github.com:defn/password-store .password-store

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
asdf install

pip3 install --user --upgrade pipx pip

pipx install pre-commit

pca

git clone https://github.com/cue-sh/vscode-cue ~/.vscode/extensions/vscode-cue

code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-containers
code --install-extension vscodevim.vim
```
