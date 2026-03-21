# nvim

Yet Another Neovim Config.

## Description
It stands on [lazy.nvim](https://github.com/folke/lazy.nvim) and is almost fully lazy loaded.
There is no single `config = function() [..] end` everything sits in opts and init functions.
Launches in ~25ms.

## Autocompletion
Autocompletion is already setup:
- [blink.cmp](https://github.com/saghen/blink.cmp) - autocompletion plugin
- [conform.nvim](https://github.com/stevearc/conform.nvim) - lightweight formatter plugin

## LSP
Full extensible LSP setup with:
- [lsp-config.nvim](https://github.com/neovim/nvim-lspconfig) - LSPs configs out-of-the-box
- [mason.nvim](https://github.com/mason-org/mason.nvim) - easy LSPs installation 
- [fidget.nvim](https://github.com/j-hui/fidget.nvim) - LSPs progress info so u know when something brokes

## Plugins
Installed plugins:
- [oil.nvim](https://github.com/stevearc/oil.nvim) - file manager for editing files like a buffer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - fuzzy find files, text
    - [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) - and everything u could imagine
- [dressing.nvim](https://github.com/stevearc/dressing.nvim) - make your Neovim looks great
