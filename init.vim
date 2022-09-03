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

call plug#begin("C:/Users/fcomi/AppData/Local/nvim-data/site/autoload")
  Plug 'EdenEast/nightfox.nvim' 

  " LSP Support
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'

  " Autocompletion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'

  " Snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'

  " LSP Setup
  Plug 'VonHeikemen/lsp-zero.nvim'

  " IDE
  Plug 'easymotion/vim-easymotion'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jiangmiao/auto-pairs'
  Plug 'prettier/vim-prettier'
call plug#end()

try
  set signcolumn=yes
  set termguicolors
  colorscheme nightfox
  let g:airline_theme='night_owl'
catch
  " do nothing
endtry

lua <<EOF
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
EOF


" Shortcut
let mapleader = " "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>Y "+y

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>f :Prettier<CR>
nmap <Leader>b :!black .<CR>

let g:airline_powerline_fonts = 1
