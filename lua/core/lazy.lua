-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Использование защищенного вызова чтобы не вызвать ошибку при первом 
--      использоание 
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
    return
end

-- Здесь прописываются плагины
lazy.setup({
    -- Иконки
    { 'kyazdani42/nvim-web-devicons', lazy = true },

    {'lewis6991/gitsigns.nvim'},

    -- Sidebar file exploer
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {"nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim"}
    },
    
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {'nvim-lua/plenary.nvim'}
    },


    -- Treesistter
    {
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/playground'
    },

    -- UndoTree
    { 
        'mbbill/undotree'
    },

    -- Vim fuggitive
    {
        'tpope/vim-fugitive'
    },

    -- lsp
    {
        'b0o/SchemaStore.nvim',
        'folke/neodev.nvim',
        'neovim/nvim-lspconfig',
        'folke/neoconf.nvim',
        'williamboman/mason-lspconfig.nvim',
        'jose-elias-alvarez/null-ls.nvim',
        'stevearc/aerial.nvim',
        'hedyhli/outline.nvim',
        'jose-elias-alvarez/null-ls.nvim',
        'jay-babu/mason-null-ls.nvim',
        'lukas-reineke/lsp-format.nvim',
       -- 'williamboman/nvim-lsp-installer'
    },
    {
        "williamboman/mason.nvim",
    }, 
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },

    {
        'nvim-lualine/lualine.nvim'
    },

    -- notify
    {
        'rcarriga/nvim-notify',
    },
    
    -- barbar
    {
        'romgrk/barbar.nvim'
    },

    -- Colorschemes
    {
        'sainnhe/gruvbox-material',
        'projekt0n/github-nvim-theme',
        'doums/darcula',
        -- 'navarasu/onedark.nvim',
        'sonph/onehalf',
    },

    {
        'terrortylor/nvim-comment',
        'windwp/nvim-autopairs',

    },
    {
        'RaafatTurki/hex.nvim',
    },

    {'akinsho/toggleterm.nvim', version = "*", config = true},

    {
      'Exafunction/codeium.vim',
      config = function ()
        -- Change '<C-g>' here to any keycode you like.
        vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
        -- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
        -- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
        vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
      end
    },

    {'kevinhwang91/nvim-bqf'},

})
