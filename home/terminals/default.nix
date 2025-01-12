{
  imports = [
    ./atuin.nix
    ./multiplexer.nix
    ./starship.nix
    ./terminal.nix
  ];
  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "wezterm";
  };
  home.shellAliases = {
    k = "kubectl";
  };
}
