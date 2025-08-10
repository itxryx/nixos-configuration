{ config, pkgs, ... }:

{
  networking = {
    hostName = "itxryx";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
      allowedUDPPorts = [];
      allowPing = false;
      
      connectionTrackingModules = [];
      autoLoadConntrackHelpers = false;
      
      logReversePathDrops = true;
      logRefusedConnections = false;
    };
  };
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    
    settings = {
      PasswordAuthentication = true;
      PubkeyAuthentication = true;
      PermitRootLogin = "no";
      PermitEmptyPasswords = false;
      
      AllowUsers = [ "itxryx" ];
      MaxAuthTries = 3;
      MaxSessions = 5;
      
      ClientAliveInterval = 300;
      ClientAliveCountMax = 2;
      LoginGraceTime = 30;
      
      X11Forwarding = false;
      AllowAgentForwarding = false;
      AllowTcpForwarding = false;
      GatewayPorts = "no";
      
      UsePAM = true;
      PrintMotd = false;
      PrintLastLog = true;
      StrictModes = true;
    };
  };
  # services.fail2ban = {
  #   enable = true;
  #   maxretry = 3;
  #   ignoreIP = [
  #     "127.0.0.0/8"
  #     "10.0.0.0/8"
  #     "172.16.0.0/12"
  #     "192.168.0.0/16"
  #   ];
  #   bantime = "1h";
  #   bantime-increment = {
  #     enable = true;
  #     multipliers = "2 4 8 16 32 64";
  #     maxtime = "5000h";
  #     overalljails = true;
  #   };
  #   jails = {
  #     ssh = {
  #       settings = {
  #         enabled = true;
  #         filter = "sshd";
  #         logpath = "/var/log/auth.log";
  #         maxretry = 3;
  #         findtime = "10m";
  #         bantime = "1h";
  #       };
  #     };
  #     nginx-http-auth = {
  #       settings = {
  #         enabled = false;
  #         filter = "nginx-http-auth";
  #         logpath = "/var/log/nginx/error.log";
  #         maxretry = 6;
  #       };
  #     };
  #   };
  # };
}