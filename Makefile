kuma-cp:
	env \
		KUMA_MODE=zone KUMA_MULTIZONE_ZONE_NAME=immanent \
		KUMA_MULTIZONE_ZONE_GLOBAL_ADDRESS=grpcs://169.254.32.1:5685 \
		kuma-cp run

kuma-hello-token:
	kumactl generate dataplane-token \
		--mesh demo \
		--name hello \
		--tag kuma.io/service=hello \
		--valid-for 720h > /tmp/hello.token

kuma-hello:
	kuma-dp run \
		--cp-address=https://127.0.0.1:5678 \
		--dataplane-file=hello.yaml \
		--dataplane-token-file=/tmp/hello.token \
  		--dataplane-var address=$$(ifconfig en0 | grep 'inet ' | awk '{print $$2}')
nix-bootstrap:
	sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume --daemon

nix-install:
	nix profile install nixpkgs#{terraform,git-crypt,gnupg,pass,powerline-go,git}
