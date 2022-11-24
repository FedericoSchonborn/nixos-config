{pkgs, ...}: let
  mkPlugin = {
    plugin,
    config ? null,
    type ? "lua",
  }: {
    inherit plugin config type;
  };

  mkPlugins = plugins: builtins.map mkPlugin plugins;
in {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      gopls
      nil
      rust-analyzer
      sumneko-lua-language-server
    ];
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = ''
      lua << EOS
      ${builtins.readFile ./init.lua}
      EOS
    '';
    plugins = mkPlugins (with pkgs.vimPlugins; [
      {
        plugin = bufferline-nvim;
        config = ''
          require "bufferline".setup {}
        '';
      }
      {plugin = cmp-buffer;}
      {plugin = cmp-nvim-lsp;}
      {plugin = cmp-path;}
      {
        plugin = crates-nvim;
        config = ''
          require "crates".setup {}
        '';
      }
      {
        plugin = gruvbox-nvim;
        config = ''
          vim.o.background = "dark"
          vim.cmd.colorscheme "gruvbox"
        '';
      }
      {
        plugin = lualine-nvim;
        config = ''
          require "lualine".setup {
            component_separators = "",
            section_separators = ""
          }
        '';
      }
      {
        plugin = nvim-cmp;
        config = ''
          require "cmp".setup {
            sources = {
              { name = "path" },
              { name = "buffer" },
              { name = "nvim_lsp" },
              { name = "crates" }
            }
          }

          vim.o.completeopt = "menu,menuone,noselect"
        '';
      }
      {
        plugin = nvim-lspconfig;
        config = ''
          local lspconfig = require "lspconfig"
          local cmp_nvim_lsp = require "cmp_nvim_lsp"

          local default_config = lspconfig.util.default_config
          default_config.capabilities = vim.tbl_deep_extend(
            "force",
            default_config.capabilities,
            cmp_nvim_lsp.default_capabilities()
          )

          lspconfig.gopls.setup {}
          lspconfig.nil_ls.setup {}
          lspconfig.rust_analyzer.setup {}
          lspconfig.sumneko_lua.setup {}
        '';
      }
      {
        plugin = nvim-tree-lua;
        config = ''
          vim.g.loaded_netrw = 1
          vim.g.loaded_netrwPlugin = true
          require "nvim-tree".setup {
            open_on_setup = true,
            open_on_setup_file = true
          }
        '';
      }
      {
        plugin = nvim-treesitter.withAllGrammars;
        config = ''
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
        '';
      }
      {
        plugin = nvim-web-devicons;
        config = ''
          require "nvim-web-devicons".setup {
            default = true
          }
        '';
      }
    ]);
  };
}
