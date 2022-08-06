git clone https://github.com/cue-sh/vscode-cue ~/.vscode/extensions/vscode-cue

git clone https://github.com/docker/docker-credential-helpers
go get github.com/docker/docker-credential-helpers/pass/cmd
go build -o /usr/local/bin/docker-credential-pass github.com/docker/docker-credential-helpers/pass/cmd
