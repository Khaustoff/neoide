local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

--Можно использовать jk для входа в normal mode 
map('i', 'jk', '<Esc>', {noremap = true})

-- Системный буфер обмена shift - y
map('v', 'S-Y', '"+y', {})
