{
  inputs = {
    dev.url = github:defn/pkg?dir=dev&ref=v0.0.63;
  };

  outputs = inputs:
    inputs.dev.main {
      inherit inputs;

      config = rec {
        slug = "defn-dev";
        version = "0.0.1";
        homepage = "https://defn.sh/${slug}";
        description = "dev environment home directory";
      };

      handler = { pkgs, wrap, system }:
        let
          latest = import inputs.latest { inherit system; };
        in
        rec {
          devShell = wrap.devShell;

          defaultPackage = wrap.nullBuilder {
            propagatedBuildInputs = with pkgs; [
              pass
              gnupg
              powerline-go
              vim
              git-crypt
              vault
              rsync
              gnumake
              dnsutils
              openssh
              pre-commit
              vim
              aws-vault
            ];
          };
        };
    };
}
