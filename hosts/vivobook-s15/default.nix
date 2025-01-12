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
  networking.hostName = "vivobook-s15";
}

