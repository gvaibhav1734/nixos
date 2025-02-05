{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # Apps
    obsidian
    zed-editor
    keeweb
    bruno
    discord

    # For gdrive
    rclone

    # For syncing configs
    chezmoi
    keepassxc

    # Developer stuff
    htop
    neovim
    wl-clipboard
    vim
    git
    curl
    wget

    sway
    yazi
    zoxide

    zk
  ];
}
