set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set tabstop=4
set relativenumber

call plug#begin()
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " LSP Support
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'

  " Debugger
  Plug 'puremourning/vimspector'
  Plug 'eliba2/vim-node-inspect'

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
  Plug 'prettier/vim-prettier', {'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html']}
call plug#end()

try
  set signcolumn=yes
  set termguicolors
  colorscheme tokyonight-moon
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

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>f :Prettier<CR>
nmap <Leader>b :!black .<CR>


" Shortcut Debugger
nnoremap <Leader><F5> :call vimspector#Launch()<CR>
nnoremap <Leader>r<F5> :call vimspector#Reset()<CR>
nnoremap <Leader><F8> :call vimspector#Continue()<CR>
nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>
nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <F8> <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

nnoremap <silent><F4> :NodeInspectStart<cr>
nnoremap <silent><F5> :NodeInspectRun<cr>
nnoremap <silent><F6> :NodeInspectConnect("127.0.0.1:9229")<cr>
nnoremap <silent><F7> :NodeInspectStepInto<cr>
nnoremap <silent><F8> :NodeInspectStepOver<cr>
nnoremap <silent><F9> :NodeInspectToggleBreakpoint<cr>
nnoremap <silent><F10> :NodeInspectStop<cr>

" Shortcut resize
nnoremap <C-Left> :vertical resize +3<CR>
nnoremap <C-Right> :vertical resize -3<CR>
nnoremap <C-Up> :resize +3<CR>
nnoremap <C-Down> :resize -3<CR>

let g:airline_powerline_fonts = 1
