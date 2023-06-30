require'nvim-treesitter.configs'.setup {
    -- Список имен парсеров, или "все" 
    -- (пять перечисленных парсеров должны быть всегда установлены)
    ensure_installed = {"lua", "vim", "vimdoc"},

    -- Устанавливать парсеры синхронно (применяется только к `ensure_installed`)
    sync_install = false,

    -- Автоматически устанавливать недостающие парсеры при вводе буфера
    -- Рекомендация: установить значение false, 
    -- если у вас локально не установлен `tree-sitter` CLI
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}  
