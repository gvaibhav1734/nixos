{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # Holy mother of god
    git

    # Compilers and languages
    gcc
    nodejs_22
    ruby_3_2
    python312
    gnumake

    # Essential tooling
    unzip
    gzip
    jq
    yq-go
    htop
    zellij
    dconf-editor

    # For devops
    kubectl
    k9s
    colima
    docker-compose

    # Developer
    hugo
    navi

    # Other nice to haves for neovim
    silicon
    lazygit
    lazydocker
    ripgrep
    fzf
  ];
}
