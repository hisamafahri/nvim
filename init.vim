" TODO:
" 1. fix usr/bin bug
" 2. fix telescope
" 2. refactoring init.vim

" My init.vim configuration file
set nocompatible

call plug#begin('~/AppData/Local/nvim/plugged')
	" Gruvbox community edition theme Plugin
    Plug 'gruvbox-community/gruvbox'

	" CoC Completion plugins
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " NerdTree Plugin
    Plug 'preservim/nerdtree'

    " Lightline
    Plug 'itchyny/lightline.vim'

    " Split Terminal
    Plug 'vimlab/split-term.vim'

    " Syntax highlighting
    Plug 'sheerun/vim-polyglot'
call plug#end()


" Settings that I consider to use:
" set nowrap
" set noswapfile
" set nobackup
" set undodir=~/nvim/undo
" set undofile
" set background=dark

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
set colorcolumn=80
set signcolumn=yes

" Key remappings
let mapleader=" "
nnoremap <leader>p "+pk<CR> 
nnoremap <leader>P "+P<CR> 
nnoremap <leader>d yypk<CR> 
nnoremap <leader>D yyP<CR> 
nnoremap <leader>o A<Enter><Esc>k0<CR>
nnoremap <leader>O I<Enter><Esc>kk0<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" COC
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" NerdTree u-C i-s
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>rr :NERDTreeRefreshRoot<cr>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd BufWinEnter * silent NERDTreeMirror
let NERDTreeShowHidden=1

" Split Terminal
set splitright
let g:split_term_default_shell = "bash"

let g:coc_global_extensions = [
"  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-flutter',
  \ ]

colorscheme gruvbox
