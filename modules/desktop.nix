{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.gdm = {
      enable = true;
      autoSuspend = false;
    };
    desktopManager.gnome = {
      enable = true;
      extraGSettingsOverrides = ''
        [org.gnome.settings-daemon.plugins.power]
        sleep-inactive-ac-type='nothing'
        sleep-inactive-battery-type='nothing'
      '';
    };
    excludePackages = with pkgs; [ xterm ];
  };
  services.gnome.core-apps.enable = false;
  environment.gnome.excludePackages = with pkgs; [ gnome-tour ];
}