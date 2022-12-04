call plug#begin('~/.vim/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'elixir-editors/vim-elixir'

Plug 'ludovicchabant/vim-gutentags'
Plug 'ervandew/supertab'

call plug#end()

nnoremap <Leader>- :History<cr>
nnoremap <Leader>s :Ag <c-r>=expand("<cword>")<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <C-g> :GitFiles<cr>

set termguicolors
let g:gruvbox_italic=1
colorscheme jellybeans

set tabstop=2
set shiftwidth=2
set expandtab

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

set clipboard=unnamed

" nvim-comp
set completeopt=menu,menuone,noselect

" Transparent color scheme so window indication works in tmux 
hi Normal guibg=NONE ctermbg=NONE
set cursorline  

set wildmode=longest,list,full
set wildmenu

lua << EOF
require("devcontainer").setup{}
require('leap').set_default_keymaps()
EOF
