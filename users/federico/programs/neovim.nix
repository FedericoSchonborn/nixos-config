{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = ''
      lua << EOS
        vim.o.number = true
        vim.o.expandtab = true
        vim.o.shiftwidth = 4
      EOS
    '';
    plugins = with pkgs.vimPlugins; [
      {
        plugin = gruvbox-nvim;
        config = ''
          lua << EOS
            vim.o.background = "dark"
            vim.cmd.colorscheme "gruvbox"
          EOS
        '';
      }
      {
        plugin = nvim-lspconfig;
        config = ''
          lua << EOS
            local lspconfig = require "lspconfig"
            lspconfig["gopls"].setup {}
            lspconfig["nil_ls"].setup {}
            lspconfig["rust_analyzer"].setup {}
          EOS
        '';
      }
      {
        plugin = nvim-treesitter.withPlugins (plugins: [
          plugins.go
          plugins.lua
          plugins.nix
          plugins.rust
        ]);
        config = ''
          lua << EOS
            require "nvim-treesitter.configs".setup {
              highlight = {
                enable = true
              }
            }
          EOS
        '';
      }
    ];
  };
}
