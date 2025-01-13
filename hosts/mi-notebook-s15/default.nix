{ 
  config,
  pkgs,
  ... 
}: 
{
  imports = [
    ../system.nix
    ./hardware-configuration.nix
  ];
  networking.hostName = "mi-notebook-s15";
}

