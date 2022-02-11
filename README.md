```
git clone git@github.com:defn/home h
mv h/.git .
rm -rf h

gpg-agent --daemon
SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK

git clone git@github.com:defn/password-store .password-store

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle
```
