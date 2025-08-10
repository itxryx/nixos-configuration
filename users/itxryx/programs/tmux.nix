{ config, pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    historyLimit = 10000;
    baseIndex = 1;
    escapeTime = 0;
    keyMode = "vi";
    mouse = true;
    prefix = "C-s";
    extraConfig = ''      
      bind-key C-s send-prefix
      
      bind-key r source-file $HOME/.config/tmux/tmux.conf \; display-message "Config reloaded"
      
      bind-key _ split-window -h -c '#{pane_current_path}'
      bind-key - split-window -v -c '#{pane_current_path}'
      
      bind-key c new-window -c '#{pane_current_path}'
      
      bind-key y set-window-option synchronize-panes \; display-message "Pane sync #{?synchronize-panes,enable,disable}"
      
      bind-key t display-popup -xC -yC -w70% -h70% -d '#{pane_current_path}' -E 'tig || sleep 1'
      bind-key T clock-mode
      
      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R
      
      bind-key -r H resize-pane -L 5
      bind-key -r J resize-pane -D 5
      bind-key -r K resize-pane -U 5
      bind-key -r L resize-pane -R 5
      
      set-option -ag terminal-overrides ",alacritty:RGB"
      
      set-option -g status-interval 5
      set-option -g status-justify centre
      set-option -g status-position bottom
      
      set-option -g status-style "bg=default,fg=#f8f8f2"
      
      set-window-option -g window-status-format "#I:#[fg=#6272a4]#W#{?window_flags,#{window_flags}, } "
      
      set-window-option -g window-status-current-format "#I:#[fg=#8be9fd,bold]#W#{?window_flags,#{window_flags}, } "
      
      set-window-option -g window-status-separator ""
      
      set-window-option -g automatic-rename on
      set-window-option -g automatic-rename-format "#{b:pane_current_path}"
      
      set-option -g status-left-length 150
      set-option -g status-left " #[fg=#8be9fd]Session:#S/Window:#I/Pane:#P"
      
      set-option -g status-right-length 150
      set-option -g status-right ""
      
      set-option -g pane-border-lines heavy
      set-option -g pane-border-status top
      set-option -g pane-border-format "#[fg=#50fa7b,bg=#282a36] #{pane_index}:#{pane_current_command} "
      set-option -g pane-border-style "fg=#6272a4"
      set-option -g pane-active-border-style "fg=#8be9fd"
      
      set-option -g display-panes-colour "#6272a4"
      set-option -g display-panes-active-colour "#8be9fd"
      set-option -g display-panes-time 1000
      
      set-option -g message-style "bg=#282a36,fg=#f8f8f2,bold"
      set-option -g message-command-style "bg=#282a36,fg=#f8f8f2,bold"
      
      bind-key [ copy-mode
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      
      set-window-option -g monitor-activity on
      set-option -g visual-activity off
      
      set-option -g bell-action none
      set-option -g visual-bell off
    '';
  };
}