local opt = vim.opt

-- Настройка табуляции
opt.smarttab = true  -- (true)
opt.tabstop = 4 -- Размер табов (4)
opt.shiftwidth = 4 -- Размер табов (4)
opt.expandtab = true -- (true)
opt.swapfile = false -- (false) Отключает swap файлы

-- Настройки UI Editor
opt.colorcolumn = '80' -- Отображние 80 символа (80)
opt.cursorline = true -- Подсветка текущей строки (true)
opt.number = true -- Linenumber отображает номера строк (true)
opt.relativenumber = true -- Относительные номера строк (true)
opt.showmatch = false -- Посвечивать парные скобки (true)
opt.ignorecase = true -- Игнорирование регистра букв при поиске (true)
opt.smartcase = true -- Игнорирование нижнего регистра для всех шаблонов (true)
opt.linebreak = true -- Перенос слов целиком (true)
opt.termguicolors = false -- Включение 24-bit цветов RGB (false)
opt.laststatus = 3 -- Установка глобальной строки состояний (3)

-- Память, CPU
opt.hidden = true -- Фоновый буффер (true)
opt.history = 100 -- Сохранение N линий в буффере (100)
opt.lazyredraw = true -- Быстрый скролинг (true)
opt.synmaxcol = 240   -- Максимальный столбец для подсветки синтаксиса (240)
opt.updatetime = 250 -- мс для ожидания сробатывания события (250)

-- Складки
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- opt.shortmess:append "sI" -- Откулючение выступительного сообщения


local settings = {
    gitAll = true,
}

return settings
