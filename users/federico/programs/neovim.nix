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
        plugin = bufferline-nvim;
        config = ''
          lua << EOS
            require "bufferline".setup {}
          EOS
        '';
      }
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
        plugin = lualine-nvim;
        config = ''
          lua << EOS
            require "lualine".setup {}
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
        plugin = nvim-tree-lua;
        config = ''
          lua << EOS
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = true
            require "nvim-tree".setup {}
          EOS
        '';
      }
      {
        plugin = nvim-treesitter.withAllGrammars;
        config = ''
          lua << EOS
            require "nvim-treesitter.configs".setup {
              highlight = {
                enable = true
              },
              incremental_selection = {
                enable = true
              },
              indentation = {
                enable = true
              }
            }
          EOS
        '';
      }
      {
        plugin = nvim-web-devicons;
        config = ''
          lua << EOS
            require "nvim-web-devicons".setup {
              default = true
            }
          EOS
        '';
      }
    ];
  };
}
