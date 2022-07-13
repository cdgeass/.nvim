" 设置 tab 为 4 空格
set expandtab
set shiftwidth=2
set softtabstop=2

" 显示行号
set number

" 在右侧打开新文件, 兼容 nvim-tree
set splitright

" 在所有模式下启用鼠标, 兼容 bufferline
set mouse=a

" 设置主题
let g:catppuccin_flavour = 'macchiato'
colorscheme catppuccin

" 加载插件
lua require('plugins')
lua require('plugins-config')
