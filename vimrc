" Python Indentions
au BufNewFile,BufRead *.py set tabstop=8 expandtab shiftwidth=4 softtabstop=4
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=79 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix


" Keyboard Shortcuts

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Tab> <C-W><C-W>

map <C-n> :NERDTreeToggle<CR>


" Plugins
call plug#begin()

Plug 'sickill/vim-monokai'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'blueyed/vim-diminactive'

call plug#end()


"Themes GUI
syntax enable
colorscheme monokai
set cursorline
set number
set smartindent
set nowrap

"highlight CursorLine guibg=#3e3d32


"Airline
set laststatus=2
let g:airline_powerline_fonts=1


" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * wincmd p
