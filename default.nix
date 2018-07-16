with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "microbit-env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    cmake
    gcc
    gcc-arm-embedded
    libffi
    ninja
    openssl
    python27
    srecord
  ];

  shellHook = ''
    alias gst="git status"
    alias vim="nvim"
    source ~/.nix-profile/bin/virtualenvwrapper.sh
    workon microbit
  '';
}
