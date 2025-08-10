{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/hardware/audio.nix
    ./modules/hardware/gpd.nix
    ./modules/hardware/storage.nix
    ./modules/hardware/touchpad.nix
    ./modules/power/cpu.nix
    ./modules/power/sleep.nix
    ./modules/input.nix
    ./modules/locale.nix
    ./modules/networking.nix
    ./modules/desktop.nix
    ./modules/fonts.nix
    ./modules/virtualisation.nix
  ];
  
  nixpkgs.config.allowUnfree = true;
  
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      auto-optimise-store = true;
      trusted-users = [ "itxryx" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  users.users.itxryx = {
    isNormalUser = true;
    description = "itxryx";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
      "video"
    ];
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;
  services.printing.enable = false;
  documentation.nixos.enable = false;
  system.stateVersion = "25.05";
}
