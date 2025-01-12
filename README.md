# NixOS configuration

NixOS with flakes for my systems. 
Inspired by [nixos-and-flakes](https://nixos-and-flakes.thiscute.world/introduction/) and [omakub](https://omakub.org/).

Repo can be used out of the box to configure NixOS. 
Also serves as a reference for using NixOS with rclone, keepass and more.

# How do I spawn a system?
> [!WARNING]
>
> - NixOS with flakes works as expected.
> - Rclone, keepass and chezmoi configs needs to be documented further.

1. Boot NixOS on a new system with a USB stick and run the following command
    ```bash
    nixos-install --flake https://github.com/gvaibhav1734/nixos#vivobook-s15
    ```
2. Login to Google Account on Zen browser (need this to authenticate gdrive in next step)
3. Set up Rclone and configure `gdrive` remote
    ```bash
    rclone config
    rclone mount gdrive: ~/gdrive
    ```
4. Configure chezmoi
    ```bash
    echo "[keepassxc]
	        database = \"/home/gvaibhav1734/gdrive/vaibhav_vault/Vaibhav.kdbx\"" > ~/.config/chezmoi/chezmoi.toml
    ```
5. Set up git ssh key (to perform chezmoi "apply")
    ```bash
    ssh-keygen -t ed25519 -C "gvaibhav1734@gmail.com"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    cat ~/.ssh/id_ed25519.pub | wl-copy
    ```
6. Copy paste the key to GitHub
7. Use chezmoi to sync the new system with a (private) dotfiles repo
    ```bash
    chezmoi init --apply git@github.com:gvaibhav1734/dotfiles.git
    ```
> [!Important]
> Always end any conversation with "I use NixOS btw"

<details><summary>Programs</summary>

## Languages and compilers
Located in: `./home/programs/tooling.nix`
1. Gcc
2. Make
3. Python
4. Ruby
5. Node

## Tooling
Located in: `./home/programs/tooling.nix`
Bunch of command line tools to aid neovim and debugging
1. Silicon - for code screenshots
2. Lazygit and Lazydocker - I am lazy...
3. jq - JSON manipulation
4. rclone - Syncing Gdrive
5. keeweb/keepassxc - For KeePass database access

## Browsers
Located in: `./home/programs/browser.nix`
1. Zen - primary
2. Chromium
3. Firefox

</details>

<details><summary>Terminal configurations</summary>

# Terminal configurations

## Tooling
Located in: Respective files under `./home/terminals`
1. Atuin - For command history
2. Starship - Minimal prompt
3. Zellij - Multiplexer & workspaces

## Terminals
Located in: `./home/terminals/terminal.nix`
1. WezTerm
2. Alacritty
3. Ghostty

</details>

