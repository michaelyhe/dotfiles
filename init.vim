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
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'preservim/nerdtree' | 
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'PhilRunninger/nerdtree-visual-selection'
call plug#end()

let g:fzf_layout = { 'window' : {'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

colorscheme gruvbox 
set background=dark

let mapleader = " "

nnoremap <leader>y ggVG"+y"<CR>
nnoremap <leader>d ggVGd<CR>
nnoremap <leader>p :Files<CR>
nnoremap <leader>v :vsp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

filetype on
filetype indent on

augroup exe_code
    autocmd!

    " execute python code
    autocmd FileType python nnoremap <buffer> <F5>
                \ :sp<CR> :term python3 %<CR> :startinsert<CR>
    " execute java code
    autocmd FileType java nnoremap <buffer> <F5>
                \ :sp<CR> :term javac %<CR> :startinsert<CR>
    autocmd FileType java nnoremap <buffer> <F9>
                \ :sp<CR> :term java %<CR> :startinsert<CR>
augroup END

