set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

colorscheme gruvbox 

let mapleader = " "
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeFocus<CR>

nnoremap <leader>y ggVG"+y"<CR>
nnoremap <C-H> <C-W><C-H><CR>
nnoremap <C-L> <C-W><C-L><CR>

filetype on
filetype indent on
set mp=g++\ -O2\ -Wall\ --std=c++17\ -Wno-unused-result\ %:r.cpp\ -o\ %:r
nmap <F2> :vs %:r.in <CR>
nmap <F3> :!time ./%:r < %:r.in <CR>
autocmd filetype cpp nnoremap <F4> :w <CR> :make<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> :make <bar> :!time ./%:r < %:r.in <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python3 %:r.py < %:r.in <CR>
