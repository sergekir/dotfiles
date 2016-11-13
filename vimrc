"Config


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


call plug#end()


"Interface
filetype on
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
nnoremap : ;


"Python
let g:syntastic_python_checkers = ['pylint']

