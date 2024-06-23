local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt 


require("gruvbox").setup({
    palette_overrides = {
        bright_green = "#98971a",
        bright_red = "#fb4934",
        bright_green = "#b8bb26",
        bright_yellow = "#fabd2f",
        bright_blue = "#82a598",
        bright_purple = "#d3869b",
        bright_aqua = "#8ec07c",
        bright_orange = "#fe8019",
    }
})
vim.cmd [[colorscheme gruvbox]]
