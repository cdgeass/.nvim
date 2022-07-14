require('toggleterm').setup{}

local opts = {
  noremap = true,
  silent = true
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = 'lazygit',
  direction = 'float',
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', opts)
