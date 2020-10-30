syntax on

set encoding=UTF-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
"set nu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set incsearch
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set showmatch
"set sw=2

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
"Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
"Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set background=dark

let mapleader=" "

if executable('rg')
    let g:rg_derive_root='true'
endif

inoremap <silent><expr> <Tab> coc#refresh()

"nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>o :NERDTreeToggle<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
