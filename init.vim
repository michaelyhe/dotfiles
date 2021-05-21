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
set splitbelow splitright " set default position for where a split opens

call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
call plug#end()

let g:fzf_layout = { 'window' : {'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <C-P> :Files<CR>

colorscheme gruvbox 
set background=dark

let mapleader = " "
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeFocus<CR>

nnoremap <leader>y ggVG"+y"<CR>

filetype on
filetype indent on

augroup exe_code
    autocmd!

    " execute python code
    autocmd FileType python nnoremap <buffer> <F5>
                \ :sp<CR> :term python3 %<CR>
    " execute java code
    autocmd FileType java nnoremap <buffer> <F5>
                \ :sp<CR> :term javac %<CR> 
    autocmd FileType java nnoremap <buffer> <F9>
                \ :sp<CR> :term java %<CR>
augroup END
"testing testing testing
