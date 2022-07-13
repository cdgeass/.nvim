-- 关闭 buffer 前切换到另一个 buffer, 因为默认关闭会导致 offset 失效
local function close_buffer()
  local treeView = require('nvim-tree.view')
  local bufferline = require('bufferline')

  local explorerWindow = treeView.get_winnr()
  local wasExplorerOpen = vim.api.nvim_win_is_valid(explorerWindow)

  local bufferToDelete = vim.api.nvim_get_current_buf()

  if (wasExplorerOpen) then
    bufferline.cycle(-1)
  end

  vim.cmd('bdelete! ' .. bufferToDelete)
end

-- 用于在 offset 中显示项目名称而不是完整的路径, linux 下需要修改分割符
local function get_project_name()
  local cwd = vim.fn.getcwd()
  -- 按 \ 分隔路径
  local index = string.find(cwd, '\\[^\\]*$')
  return string.sub(cwd, index + 1, string.len(cwd))
end

require('bufferline').setup{
  options = {
    close_command = close_buffer,
    offsets = {
      {
        filetype = "NvimTree",
        text = get_project_name,
        highlight = "Directory",
        text_align = "left"
      }
    }
  }
}
