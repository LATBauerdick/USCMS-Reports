with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    pandoc
    texlive.combined.scheme-full
# these packages are required for virtualenv and pip to work:
#
#    python27Full
    python27Packages.virtualenv
    python27Packages.pip
  ];
  src = null;
  shellHook = ''
# set SOURCE_DATE_EPOCH so that we can use python wheels
  SOURCE_DATE_EPOCH=$(date +%s)
  virtualenv --no-setuptools venv
  export PATH=$PWD/venv/bin:$PATH
  pip install pandoc-fignos
  '';
}


