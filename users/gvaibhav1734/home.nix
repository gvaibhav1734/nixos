{
  pkgs,
  dconf,
  ...
}:
{
  imports = [
    ../../home/core.nix
    ../../home/programs
    ../../home/terminals
  ];
  programs.git = {
    enable = true;
    userEmail = "gvaibhav1734@gmail.com";
    userName = "Vaibhav G";
  };
  # Tweak GNOME stuff
  dconf = {
    enable = true;  
    settings = {
      # enable extensions
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = with pkgs.gnomeExtensions; [
          blur-my-shell.extensionUuid
          space-bar.extensionUuid
        ];
      };

      # set number of workspaces
      "org/gnome/desktop/wm/preferences" = {
        "num-workspaces" = 6;
      };

      # move to workspace
      "org/gnome/desktop/wm/keybindings" = {
        "move-to-workspace-1" = ["<Super><Shift>1"];
        "move-to-workspace-2" = ["<Super><Shift>2"];
        "move-to-workspace-3" = ["<Super><Shift>3"];
        "move-to-workspace-4" = ["<Super><Shift>4"];
        "move-to-workspace-5" = ["<Super><Shift>5"];
        "move-to-workspace-6" = ["<Super><Shift>6"];
        "move-to-workspace-7" = ["<Super><Shift>7"];
        "move-to-workspace-8" = ["<Super><Shift>8"];
        "move-to-workspace-9" = ["<Super><Shift>9"];
      };

      # switch to workspace
      "org/gnome/desktop/wm/keybindings" = {
        "switch-to-workspace-1" = ["<Super>1"];
        "switch-to-workspace-2" = ["<Super>2"];
        "switch-to-workspace-3" = ["<Super>3"];
        "switch-to-workspace-4" = ["<Super>4"];
        "switch-to-workspace-5" = ["<Super>5"];
        "switch-to-workspace-6" = ["<Super>6"];
        "switch-to-workspace-7" = ["<Super>7"];
        "switch-to-workspace-8" = ["<Super>8"];
        "switch-to-workspace-9" = ["<Super>9"];
      };

      # change keybinds to applications
      "org/gnome/shell/keybindings" = {
        "switch-to-application-1" = ["<Alt>1"];
        "switch-to-application-2" = ["<Alt>2"];
        "switch-to-application-3" = ["<Alt>3"];
        "switch-to-application-4" = ["<Alt>4"];
        "switch-to-application-5" = ["<Alt>5"];
        "switch-to-application-6" = ["<Alt>6"];
        "switch-to-application-7" = ["<Alt>7"];
        "switch-to-application-8" = ["<Alt>8"];
        "switch-to-application-9" = ["<Alt>9"];
      };
    };
  };
}
