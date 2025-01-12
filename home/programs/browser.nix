{
  pkgs,
  zen-browser,
  system,
  ...
}:
{
  home.packages = with pkgs; [
    zen-browser.packages."${system}".default
    chromium
    firefox
  ];
}
