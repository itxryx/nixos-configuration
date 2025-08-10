{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 1000000;
      save = 1000000;
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
    };
    sessionVariables = {
      LANG = "en_US.UTF-8";
      EDITOR = "vim";
      CLICOLOR = "1";
      PATH = "$HOME/bin:$HOME/.local/bin:$HOME/.local/lib/bin:$PATH";
    };
    initContent = ''
      autoload -Uz compinit && compinit
      bindkey -v
      autoload -Uz colors
      colors
      PROMPT='%F{117}%n@%m %~%f
      %F{109}%D{%H:%M:%S}%f %F{109}%B❯%b%f '
      setopt auto_cd
      setopt auto_list
      setopt auto_menu
      setopt hist_reduce_blanks
      setopt hist_ignore_all_dups
      setopt share_history
      setopt inc_append_history
      setopt mark_dirs
      setopt no_beep
      setopt print_eight_bit
      if command -v zoxide &> /dev/null; then
        eval "$(zoxide init zsh)"
        alias cd="z"
      fi
      if command -v fzf &> /dev/null; then
        eval "$(fzf --zsh)"
      fi
      if command -v sheldon &> /dev/null; then
        eval "$(sheldon source)"
      fi
      if command -v abbr &> /dev/null; then
        abbr -S g='git' &> /dev/null
        abbr -S t='tig' &> /dev/null
        abbr -S ls='eza' &> /dev/null
        abbr -S la='eza -a' &> /dev/null
        abbr -S ll='eza -l' &> /dev/null
        abbr -S lla='eza -la' &> /dev/null
        abbr -S cat='bat' &> /dev/null
        abbr -S find='fd' &> /dev/null
        abbr -S grep='rg' &> /dev/null
        abbr -S ps='procs' &> /dev/null
        abbr -S dk='docker' &> /dev/null
        abbr -S dkc='docker compose' &> /dev/null
      fi
    '';
  };
  programs.fzf = {
    enableZshIntegration = true;
  };
}