-- This file is for specifying packers to use

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)

    use 'dart-lang/dart-vim-plugin'         -- dart formatting
    use 'wbthomason/packer.nvim'            -- plugin manager
    use 'catppuccin/nvim'                   -- colour theme
    use 'jiangmiao/auto-pairs'              -- auto-close brackets
    use 'nvim-lualine/lualine.nvim'         -- fancy status bar
    use 'sheerun/vim-polyglot'              -- synax highlighting
    use 'akinsho/flutter-tools.nvim'        -- flutter/dart tools
    use 'jose-elias-alvarez/null-ls.nvim'   -- formatter and linters
    use 'neovim/nvim-lspconfig'

    -- autocompletion
    use 'hrsh7th/nvim-cmp'                  -- completion engine 
    use 'hrsh7th/cmp-nvim-lsp'              -- LSP source for nvim-cmp 
    use 'hrsh7th/cmp-buffer'                -- buffer completions 
    use 'hrsh7th/cmp-path'                  -- Path completions

    -- snippets for completions
    use 'L3MON4D3/LuaSnip'                  -- snippet engine
    use 'saadparwaiz1/cmp_luasnip'          -- snippet completions

    -- fuzzy finder and search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

end)

-- When done run :PackerSync
