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
```
