" by: Gabriel Kutuzov > https://www.kutuzov.dev/ 
" __     ___           ____   ____ 
" \ \   / (_)_ __ ___ |  _ \ / ___|
"  \ \ / /| | '_ ` _ \| |_) | |    
"   \ V / | | | | | | |  _ <| |___ 
"    \_/  |_|_| |_| |_|_| \_\\____|
" -----------------------------------

call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-obsession'

Plug 'junegunn/goyo.vim'                      " word-processing
Plug 'w0rp/ale'                               " linting and formatting

if has('nvim')
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'nvim-lua/plenary.nvim'                  " [dep] async for neo-vim
endif

Plug 'godlygeek/tabular'                      " tab folding [req by nerdtree]
Plug 'preservim/nerdtree'                     " File explorer/navigator
Plug 'ryanoasis/vim-devicons'                 " icons for nerdtree
Plug 'rust-lang/rust.vim'                     " Rust Language integration

Plug 'Yggdroot/indentline'                    " line indentation preview
Plug 'PotatoesMaster/i3-vim-syntax'           " i3 config sh'ing 
Plug 'pangloss/vim-javascript'                " javascript sh'ing
Plug 'mxw/vim-jsx'                            " jsx sh'ing
Plug 'plasticboy/vim-markdown'                " markdown editing
Plug 'itchyny/lightline.vim'                  " lightweight status bar

Plug 'gruvbox-community/gruvbox'              " gruvbox colorscheme
Plug 'flazz/vim-colorschemes'                 " colorscheme collection 
Plug 'ap/vim-css-color'                       " CSS color preview

Plug 'farmergreg/vim-lastplace'               " save location in file
Plug 'jiangmiao/auto-pairs'                   " auto pairs for '{} [] ()'

Plug 'tikhomirov/vim-glsl'                    " GLSL syntax

Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'         " Cycle through colorschemes

"Plug 'folke/todo-comments.nvim'

if has('nvim')
  Plug 'neovim/nvim-lspconfig'                  " NeoVim LSP
  Plug 'williamboman/nvim-lsp-installer'        " Simple installer for LS's
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  "Plug 'hrsh7th/cmp-nvim-lsp'                  " LSP auto-completion
endif
call plug#end()

syntax on
set number
set relativenumber
set splitbelow splitright

set wildmenu
set clipboard=unnamed
set clipboard=unnamedplus " TODO: ??
set encoding=utf-8
set cmdheight=2

if has('nvim')
    colorscheme gruvbox
endif
colorscheme moonshine

" Some colorschemes I like.... and may possibly use again.
" colorscheme gryffin

" colorscheme honeyday
" colorscheme moody
" colorscheme carvedwoodcool
" To set colors to all, use ':SetColors all'

" Space/Tab width
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap

set autoindent

" Fuck swapfiles
set noswapfile

" Search settings
set hlsearch
set hidden
set incsearch

set colorcolumn=80
set signcolumn=yes
set scrolloff=8

" Horrible shit we don't like
set noerrorbells
set novisualbell

set background=dark

" This unsets the last search pattern register by hitting return
let mapleader=" "
nnoremap <Space> <Nop>

" Normal mode reamps for useful commands/plguins 
nnoremap <leader>g :Goyo \| set linebreak<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>c :noh<CR>
nnoremap <leader>s :NextColorScheme<CR>
nnoremap <leader>S :PreviousColorScheme<CR>

if has('nvim')
  nnoremap <leader>t :Telescope<CR>
endif

" Remap for tabswitches
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt

""" Splits
" Remap split navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Settings for plugins
let g:jsx_ext_required = 0

" ~~ ALE Settings ~~ "
let g:ale_enabled = 0

let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'javascriptreact': ['eslint']
  \ }

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'javascriptreact': ['eslint']
  \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fix_on_save = 1

" disable conceal
let g:vim_json_conceal=0

augroup filetype_html
"    autocmd!
"augroup END

" set tabs for css/less files

" T:2 S:2 for JS/Web + ALE
autocmd BufNewFile,BufRead *.js,*.jsx,*.css,*.less,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
"autocmd BufNewFile,BufRead *.js,*.jsx,*.css,*.less,*.html let g:ale_enabled = 1

" Filetype for shader files
autocmd! BufNewFile,BufRead *.vs,*.fs,*.shader set ft=glsl
