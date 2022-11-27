{
  inputs = {
    dev.url = github:defn/pkg?dir=dev&ref=dev-0.0.2;
    defn-dev.url = github:defn/dev?ref=v0.0.22;
  };

  outputs = inputs:
    inputs.dev.main {
      inherit inputs;

      config = rec {
        slug = "defn-home";
        version = "0.0.1";
        homepage = "https://defn.sh/${slug}";
        description = "defn macOS home directory";
      };

      handler = { pkgs, wrap, system }:
        {
          devShell = wrap.devShell;
          defaultPackage = wrap.nullBuilder { };
        };
    };
}
