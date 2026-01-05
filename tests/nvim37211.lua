local api = vim.api
vim.g.loaded_netrw = 1
require('vim._extui').enable({})
vim.cmd.tabnew()
local buf1 = api.nvim_create_buf(false, true)
local win1 = api.nvim_open_win(buf1, true, { split = 'right' })
local buf2 = api.nvim_create_buf(false, true)
local win2 = api.nvim_open_win(buf2, true, { split = 'below' })
api.nvim_create_autocmd('WinClosed', { callback = function() api.nvim_buf_delete(buf1, { force = true }) api.nvim_buf_delete(buf2, { force = true }) end })
api.nvim_create_autocmd('BufEnter', { buffer = buf1, callback = function() api.nvim_set_current_win(win2) return true end })
vim.schedule(function()
  vim.fn.win_gotoid(win1)
  vim.cmd('wincmd w|q|q')
end)
