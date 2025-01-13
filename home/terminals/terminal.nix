{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    wezterm
    alacritty
    ghostty
  ];

  xdg.desktopEntries."org.wezfurlong.wezterm" = {
     name = "WezTerm";
     comment = "Wez's Terminal Emulator";
     # https://github.com/wez/wezterm/issues/3334#issuecomment-1481340133
     exec = "env -u WAYLAND_DISPLAY wezterm start --cwd .";
     type = "Application";
     icon = "org.wezfurlong.wezterm";
     terminal = false;
     categories = [ "Utility" "TerminalEmulator"];
  };
}
