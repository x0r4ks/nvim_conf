local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local options = require('core.options')

local settings = require("core.options")

vim.g.mapleader = ' ' -- Главная клавиша для шорткатов

-- map('n', '.', '', opts)

---- Basic
-- Перезагрузка конфига без перезапука nvim
map('n', '<leader>r', ':so %<CR>', opts)

-- Быстрое сохранение
map('n', '<leader>s', ':w<CR>', opts)

-- Закрыть все окна и выйти из Nvim
map('n', '<leader>q', ':qa!<CR>', opts)

-- Сохранить и закрыть буфер
map('n', '<leader>S', ':wq<CR>', opts)

--- NeoTree
map('n', '<leader>e', ':Neotree toggle<CR>', opts)            -- открыть/закрыть файлы
map('n', '<leader>o', ':Neotree git_status toggle<CR>', opts) -- открыть/закрыть git_status




---- Telescop

-- Поиск файлов по их имени
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)

-- Поиск файлов по их содержимому
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)

-- Поиск буфферов (вкладок) по их имени
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)

map('n', '<leader>gc', ':Telescope git_commits<CR>', opts)
map('n', '<leader>gb', ':Telescope git_branches<CR>', opts)
map('n', '<leader>gs', ':Telescope git_status<CR>', opts)



---- UndoTree
map('n', '<leader>u', ':UndotreeToggle<CR>', opts) -- Открытие UndoTree

---- Fugittive
if (not settings.gitAll) then
    map('n', '<leader>ga', ":Git add ", opts)      -- git add вы должны сами ввести файлы
else
    map('n', '<leader>ga', ":Git add .<CR>", opts) -- git add добовляет все файлы
end
map('n', '<leader>gm', ":Git commit<CR>", opts)    -- git commit


---- Barbar
-- Move to previous/next
map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)
-- Close buffer
map('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)
map('n', '<leader><C-c>', '<Cmd>BufferClose!<CR>', opts)
map('n', '<C-t>', '<Cmd>tabnew<CR>', opts)

---- Comment
map('n', '<leader>/', ':CommentToggle<CR>', opts)
map('v', '<leader>/', ':CommentToggle<CR>', opts)


---- Hex Viever
map('n', '<leader>h', ':HexToggle<CR>', opts)

---- Formating
map('n', '<leader>T', ':LspZeroFormat<CR>', opts) -- Or F3


local keys = {
    autocomplete_key_confirm = "<CR>", -- <CR> is Enter
    autocomplete_key_next = "<Tab>",   -- <Tab> is Tab
    autocomplete_key_prev = "<Tab>",
    
    outline_toggle_key = "<leader>a",

    telescope_goto_definitions = "<leader>fd",
    telescope_goto_referenses = "<leader>fr",
}

return keys
