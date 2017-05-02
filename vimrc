"Config
set nocompatible
set noswapfile
filetype off


"Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'neomake/neomake'

Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'easymotion/vim-easymotion'

Plug 'chriskempson/base16-vim'

Plug 'dhruvasagar/vim-table-mode'

Plug 'jiangmiao/auto-pairs'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'luochen1990/rainbow'

Plug 'scrooloose/nerdcommenter'

Plug 'hynek/vim-python-pep8-indent'

Plug 'pangloss/vim-javascript'

Plug 'posva/vim-vue'

call plug#end()

filetype plugin indent on

"Eneble python
let g:python3_host_prog=$HOME . '/.virtualenvs/neovim/bin/python'


"Editing
set autoindent

autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype markdown setlocal ts=2 sw=2 sts=2 expandtab

autocmd BufWritePre * %s/\s\+$//e


"Interface
syntax enable

set relativenumber
set number

set showmatch
set hlsearch
set cursorline
set scrolloff=5

let base16colorspace=256
colorscheme base16-default-dark
hi MatchParen cterm=none ctermbg=19 ctermfg=LightGray
hi VertSplit cterm=none ctermbg=18 ctermfg=LightGray
hi Comment cterm=none ctermbg=18 ctermfg=LightGray

set splitbelow
set splitright
set mouse=


"Key Bindings
let mapleader=' '
nnoremap ; q:i
nnoremap : q:i

" Window navigation
nnoremap <Leader>w/ <C-w>v
nnoremap <Leader>w- <C-w>s

nnoremap <Leader>wh <C-w><C-h>
nnoremap <Leader>wj <C-w><C-j>
nnoremap <Leader>wk <C-w><C-k>
nnoremap <Leader>wl <C-w><C-l>
nnoremap <Leader>ww <C-w>w

" Buffer navigation
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bd :bdelete<CR>

" Files
nnoremap <Leader>fs :update<CR>


" CtrlP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
nnoremap <Leader>bb :CtrlPBuffer<CR>
nnoremap <Leader>ff :CtrlP<CR>
set wildignore+=*/__pycache__/*,*.pyc,*/htmlcov/*,node_modules

" surround.vim
vmap s S

" Snippets
let g:UltiSnipsExpandTrigger='<c-s>'

" Nerd Commenter
nmap <Leader>cp <Leader>cyp
nmap <Leader>cP <Leader>cyP
vmap <Leader>cp <Leader>cy`>p
vmap <Leader>cP <Leader>cyP


" Plugin settings

" Airline
set laststatus=2
let g:airline_theme='base16'
let g:airline#extensions#virtualenv#enabled = 0
let g:airline_section_y = 0
let g:airline_section_x = ''
autocmd! BufWritePost * Neomake

" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\'ctermfgs': ['21', '03', '17', '02'],
\'separately': {
\'htmldjango': 0,
\'html': 0,
\'xml': 0,
\}
\}

" VIM Table Mode
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" You Complete Me
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>gg :YcmCompleter GoTo<CR>
"
" autocmd! UltiSnips_AutoTrigger
