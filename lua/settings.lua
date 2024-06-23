local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt 

-- Rus Eng
g.translate_source = 'ru'
g.translate_target = 'en'

--Numbering
vim.opt.number = true
vim.opt.relativenumber = true 

--Colorscheme
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd 'colorscheme gruvbox'

--Swp files
vim.opt.swapfile = false

-- Tabs
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 3       -- shift 4 spaces when tab
opt.tabstop = 3           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]
-- 2 spaces for selected filetypes
cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]
