local keymaps = require("core.keymaps")
local options = require("core.options")

require("outline").setup({
    vim.keymap.set('n', keymaps.outline_toggle_key, "<cmd>Outline<CR>", { desc = "Toggle Outline" }),

    symbol_folding = {
        autofold_depth = 1,
        auto_unfold = {
            hovered = true,
        },
    },

    preview_window = {
        auto_preview = options.outline_preview,
    },

    outline_window = {
        auto_jump = options.outline_autojump,
    },

    outline_items = {
        show_symbol_lineno = options.outline_linenumbers,
    },
})
