{ config, pkgs, ... }:
{
  powerManagement = {
    enable = true;
    cpuFreqGovernor = "schedutil";
  };
}