{ config, pkgs, ... }:
{
  programs.vim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      dracula-vim
    ];
    settings = {
      number = true;
      relativenumber = false;
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };
    extraConfig = ''
      set fenc=utf-8
      set encoding=utf-8
      set nobackup
      set noswapfile
      set autoread
      set hidden
      set autoindent
      set smartindent
      set ignorecase
      set smartcase
      set hlsearch
      set cursorline
      set showcmd
      set showmatch
      set laststatus=2
      set visualbell
      set list
      set virtualedit=onemore
      set listchars=tab:»-,trail:-,eol:↲,nbsp:%
      highlight NonText ctermbg=NONE ctermfg=Gray
      highlight SpecialKey ctermbg=NONE ctermfg=Gray
      highlight CursorLine ctermbg=Black
      highlight CursorLine ctermfg=Blue
      nnoremap j gj
      nnoremap k gk
      set wrapscan
      set backspace=2
      syntax enable
      set termguicolors
      colorscheme dracula
    '';
  };
}