set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber

call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim'
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'townk/vim-autoclose'
call plug#end()

let g:coc_disable_startup_warning = 1

colorscheme gruvbox
set background=dark
let g:airline_theme = "apprentice"
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>f  <Plug>(coc-format-selected)

nmap <Leader>gd <Plug>(coc-definition)

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
