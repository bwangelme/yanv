vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {silent = true }
local cmd_opt = {}

map('n', '<F3>', ':NvimTreeToggle<CR>', opt)
map('n', '<', '<gv', opt)
map('n', '>', '>gv', opt)
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)
map('n', 'H', '^', opt)
map('n', 'L', '$', opt)
map('n', '\'', '`', opt)
map('n', '`', '\'', opt)
map('n', '-', 'zc', opt)
map('n', '+', 'zo', opt)
map('n', '<leader>s', ':w<CR>', opt)


------------------------------------------------------------------------
-- 分屏窗口移动, Smart way to move between windows
----------------------------------------------------------------------
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-l>', '<C-w>l', opt)
map('n', '<C-v>', '<C-w>v', opt)
map('n', '<C-c>', '<C-w>c', opt)
map('n', '<C-s>', '<C-w>s', opt)

----------------------------------------------------------------------
-- INSERT 模式下按键映射
----------------------------------------------------------------------
map('i', '<C-a>', '<home>', opt)
map('i', '<C-e>', '<end>', opt)
map('i', '<C-d>', '<del>', opt)
-- 插入模式下将小写字母转换成大写字母, I love this very much
map('i', '<C-y>', '<esc>gUiwea', opt)
-- 详见：http://www.skywind.me/blog/archives/2021
map('i', '<C-h>', '<left>', opt)
map('i', '<C-j>', '<down>', opt)
map('i', '<C-k>', '<up>', opt)
map('i', '<C-l>', '<right>', opt)

----------------------------------------------------------------------
-- 命令模式的按键映射
----------------------------------------------------------------------
map('c', '<C-h>', '<left>', cmd_opt)
map('c', '<C-l>', '<right>', cmd_opt)
map('c', '<C-b>', '<left>', cmd_opt)
map('c', '<C-a>', '<home>', cmd_opt)
map('c', '<C-e>', '<end>', cmd_opt)
map('c', '<C-f>', '<right>', cmd_opt)
map('c', '<C-d>', '<del>', cmd_opt)

-- 将%:h映射为%%，%:h的功能是显示当前缓冲区文件的绝对路径
map('c', '%%', "getcmdtype() == ':' ? expand('%:p:h').'/' : '%%'", {expr = true})

------------------------------------------------------------------------
-- 复制选中区到系统剪切板中
------------------------------------------------------------------------
if vim.api.nvim_get_option('clipboard') then
  vim.keymap.set('v', 'y', '"+y', {remap=false})
  map('v', 'Y', '"+y$', opt)
else
  map('n', 'Y', "y$", opt)
end

