{ config, pkgs, ... }:
{
  imports = [
    ./packages.nix
    ./programs/alacritty.nix
    ./programs/git.nix
    ./programs/tmux.nix
    ./programs/vim.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
  ];
  home = {
    username = "itxryx";
    homeDirectory = "/home/itxryx";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };
  home.file = {
    ".gitconfig_work".source = ./dotfiles/gitconfig_work;
    ".gitignore_global".source = ./dotfiles/gitignore_global;
    ".config/sheldon/plugins.toml".source = ./dotfiles/sheldon-plugins.toml;
  };
}