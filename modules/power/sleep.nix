{ config, pkgs, ... }:
{
  systemd.sleep.extraConfig = ''
    AllowSuspend=no
    AllowHibernation=no
    AllowSuspendThenHibernate=no
    AllowHybridSleep=no
  '';
  services.logind = {
    powerKey = "ignore";
    powerKeyLongPress = "poweroff";
    lidSwitch = "ignore";
    lidSwitchExternalPower = "ignore";
    lidSwitchDocked = "ignore";
    suspendKey = "ignore";
    hibernateKey = "ignore";
    extraConfig = ''
      IdleAction=ignore
    '';
  };
}