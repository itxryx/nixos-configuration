{ config, pkgs, pkgsUnstable, ... }:
{
  home.packages = with pkgs; [
    # Core utilities
    curl
    wget
    zip
    unzip

    # Modern CLI replacements
    bat            # cat alternative
    eza            # ls alternative
    fd             # find alternative
    fzf            # fuzzy finder
    procs          # ps alternative
    ripgrep        # grep alternative
    zoxide         # cd alternative
    
    # Shell utilities
    jq             # JSON processor
    nkf            # Character encoding converter
    sheldon        # Shell plugin manager
    tig            # Git TUI
    tree           # Directory tree viewer
    wl-clipboard   # Wayland clipboard utilities

    # System monitoring
    lm_sensors     # Hardware monitoring
    smartmontools  # Tools for monitoring the health of hard drives
    mission-center # System monitor

    # Development tools
    nodejs_24
    go
    ruby
    python314
    vscode
    processing

    # Network tools
    nmap
    tcpdump
    tailscale

    # Container tools
    docker-compose

    # Media tools
    ffmpeg         # Media processing
    imagemagick    # Image processing
    qiv            # Quick image viewer
    vlc            # Media player

    # Web
    firefox
    thunderbird
    google-chrome

    # Communication
    slack

    # File management
    nautilus       # GNOME file manager

    # AI/ML tools
    lmstudio          # Desktop app for local LLMs
    ollama            # CLI for running local LLMs
  ] ++ [
    # Packages from unstable channel
    pkgsUnstable.claude-code  # AI coding assistant CLI
  ];
}