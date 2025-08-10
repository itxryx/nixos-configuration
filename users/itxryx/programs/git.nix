{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "ito ryo";
    userEmail = "electrooculogram@gmail.com";
    extraConfig = {
      core = {
        excludesfile = "~/.gitignore_global";
        editor = "vim";
      };
      init = {
        defaultBranch = "main";
      };
      color = {
        ui = "auto";
      };
      merge = {
        ff = false;
        conflictstyle = "diff3";
      };
      fetch = {
        prune = true;
      };
      pull = {
        ff = "only";
        rebase = true;
      };
      rebase = {
        autostash = true;
        autosquash = true;
      };
      push = {
        default = "current";
      };
      diff = {
        colorMoved = "default";
      };
      alias = {
        glog = "log --graph --stat --oneline --all --branches --tags --remotes --pretty=fuller --decorate=auto";
      };
    };
    delta = {
      enable = true;
      options = {
        side-by-side = true;
        line-numbers = true;
        navigate = true;
        light = false;
      };
    };
    includes = [
      {
        condition = "gitdir:~/Works/";
        path = "~/.gitconfig_work";
      }
    ];
  };
}
