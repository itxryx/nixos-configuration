{ config, pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      cursor = {
        blink_interval = 250;
        blink_timeout = 0;
        style = {
          blinking = "Always";
          shape = "Beam";
        };
      };
      font = {
        size = 14.0;
        normal = {
          family = "HackGen";
          style = "Regular";
        };
        bold = {
          family = "HackGen";
          style = "Bold";
        };
        italic = {
          family = "HackGen";
          style = "Italic";
        };
        bold_italic = {
          family = "HackGen";
          style = "Bold Italic";
        };
      };
      scrolling = {
        history = 10000;
        multiplier = 3;
      };
      selection = {
        save_to_clipboard = true;
      };
      window = {
        opacity = 1;
        dimensions = {
          columns = 200;
          lines = 60;
        };
        padding = {
          x = 8;
          y = 8;
        };
        position = {
          x = 0;
          y = 0;
        };
      };
      general = {
        live_config_reload = true;
      };
      env = {
        TERM = "alacritty";
      };
      colors = {
        primary = {
          background = "#282a36";
          foreground = "#f8f8f2";
          bright_foreground = "#ffffff";
        };
        cursor = {
          text = "#282a36";
          cursor = "#f8f8f2";
        };
        vi_mode_cursor = {
          text = "#282a36";
          cursor = "#f8f8f2";
        };
        search = {
          matches = {
            foreground = "#44475a";
            background = "#50fa7b";
          };
          focused_match = {
            foreground = "#44475a";
            background = "#ffb86c";
          };
        };
        footer_bar = {
          background = "#282a36";
          foreground = "#f8f8f2";
        };
        hints = {
          start = {
            foreground = "#282a36";
            background = "#f1fa8c";
          };
          end = {
            foreground = "#f1fa8c";
            background = "#282a36";
          };
        };
        line_indicator = {
          foreground = "None";
          background = "None";
        };
        selection = {
          text = "#f8f8f2";
          background = "#44475a";
        };
        normal = {
          black = "#21222c";
          red = "#ff5555";
          green = "#50fa7b";
          yellow = "#f1fa8c";
          blue = "#bd93f9";
          magenta = "#ff79c6";
          cyan = "#8be9fd";
          white = "#f8f8f2";
        };
        bright = {
          black = "#6272a4";
          red = "#ff6e6e";
          green = "#69ff94";
          yellow = "#ffffa5";
          blue = "#d6acff";
          magenta = "#ff92df";
          cyan = "#a4ffff";
          white = "#ffffff";
        };
      };
    };
  };
}