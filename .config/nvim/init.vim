"""""""""" GENERAL CONFIGURATION """"""""""
syntax on
syntax enable

set number
set autoread
set noswapfile
set nobackup
set nowritebackup
set backspace=indent,eol,start
set clipboard+=unnamedplus
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set encoding=utf-8
set fileformat=unix
set spell

let g:python_highlight_all=1

let mapleader = ' '

"""""""""" PLUGINS """"""""""
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal

call plug#begin('~/.vim/plugged')

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'EdenEast/nightfox.nvim'

call plug#end() 


"""""""""" THEMES """"""""""
" colorscheme catppuccin-mocha
colorscheme carbonfox
" colorscheme duskfox


"""""""""" PLUGIN OPTIONS """"""""""
"""""""""" NERDTree """""""""" 
nmap <leader>f :NERDTreeToggle<CR>

let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=38

"""""""""" Airline """""""""" 
let g:airline_theme='dark'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

"""""""""" Buffer/Tabs """""""""" 
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <leader>d :bd<CR>

