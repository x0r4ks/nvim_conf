vim.notify = require("notify")

vim.notify.setup({

    background_colour = "NotifyBackground",
    fps = 30,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = ""
    },
    level = 2,
    minimum_width = 50,
    render = "compact",
    stages = "slide",
    timeout = 5000,
    top_down = true,
--    opacity = 20,
})

