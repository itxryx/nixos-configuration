{ config, pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      jetbrains-mono
      hack-font
      nerd-fonts.jetbrains-mono
      hackgen-font
      hackgen-nf-font
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [
          "Liberation Sans"
          "Noto Sans CJK JP"
          "Noto Color Emoji"
        ];
        monospace = [
          "JetbrainsMono Nerd Font"
          "Jetbrains Mono"
          "HackGen"
          "HackGen NF"
          "Hack"
          "Noto Sans Mono CJK JP"
          "Noto Color Emoji"
        ];
        serif = [
          "Liberation Serif"
          "Noto Serif CJK JP"
          "Noto Color Emoji"
        ];
      };
      antialias = true;
      subpixel = {
        rgba = "rgb";
        lcdfilter = "default";
      };
    };
  };
}