-- Initialize original vimrc
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

set guicursor=i:block
set conceallevel=0
]])

require('keymaps');

-- Configuration Modules
require('config.lsp');
--require('config.todohighlight');
require('config.treesitter');
