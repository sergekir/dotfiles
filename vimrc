"Config
set nocompatible
filetype off


"Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'easymotion/vim-easymotion'

Plug 'sickill/vim-monokai'

Plug 'dhruvasagar/vim-table-mode'

Plug 'jiangmiao/auto-pairs'

call plug#end()

filetype plugin indent on


"Editing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent


"Interface
syntax enable

set relativenumber
set number

set showmatch
set hlsearch
set cursorline
set scrolloff=5

colorscheme monokai

" Airline
set laststatus=2


"Key Bindings
let mapleader = "\<Space>"
nnoremap ; :


"Python
let g:syntastic_python_checkers = ['pylint']
