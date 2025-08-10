{ config, pkgs, ... }:
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    tmp.useTmpfs = true;
    kernelParams = [
      "verbose"
      "amd_pstate=active"
      "psmouse.proto=imps"
      "i8042.nopnp=1"
      "i8042.nomux=1"
      "amdgpu.dc=1"
      "amdgpu.dpm=1"
    ];
  };
}