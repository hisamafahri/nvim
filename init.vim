" My init.vim configuration file

call plug#begin('~/AppData/Local/nvim/plugged')
	" Gruvbox community edition theme Plugin
    Plug 'gruvbox-community/gruvbox'

    " Telescope

call plug#end()


" Settings that I consider to use:
" set nowrap
" set noswapfile
" set nobackup
" set undodir=~/nvim/undo
" set undofile

set exrc
set relativenumber
set nu
set nohls
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
set smartcase
set scrolloff=8
set incsearch
set signcolumn=yes
set colorcolumn=80
set background=dark

" Key remappings
let mapleader=" "
nnoremap <leader>w :w!<CR>

colorscheme gruvbox
