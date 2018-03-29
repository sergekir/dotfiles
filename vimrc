" Config
set nocompatible
set noswapfile
filetype off


"Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'neomake/neomake'

Plug 'Valloric/YouCompleteMe'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'easymotion/vim-easymotion'

Plug 'chriskempson/base16-vim'

Plug 'dhruvasagar/vim-table-mode'

Plug 'jiangmiao/auto-pairs'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'luochen1990/rainbow'

Plug 'scrooloose/nerdcommenter'

Plug 'hynek/vim-python-pep8-indent'

Plug 'chr4/nginx.vim'

Plug 'godlygeek/tabular'

Plug 'plasticboy/vim-markdown'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-eunuch'

Plug 'hecal3/vim-leader-guide'

Plug 'kylef/apiblueprint.vim'

Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }

Plug 'fisadev/vim-isort'

Plug 'chrisbra/csv.vim'

Plug 'tpope/vim-repeat'

call plug#end()

filetype plugin indent on

"Spelling

set spell spelllang=en,ru

"Eneble python
let g:python3_host_prog=$HOME . '/virtualenvs/neovim/bin/python'


"Editing
set autoindent

autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype markdown setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype rst setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype nginx setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype apiblueprint setlocal ts=2 sw=2 sts=2 expandtab

autocmd BufWritePre * %s/\s\+$//e


"Interface
syntax enable

set relativenumber
set number
set nowrap

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
inoremap <c-l> <c-^>

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
set wildignore+=*/__pycache__/*,*.pyc,*/htmlcov/*,node_modules,*/build/*,*/media/*,*/static/*

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
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_y = 0
let g:airline_section_x = ''
let g:airline_mode_map = {
\ '__' : '-',
\ 'n'  : 'N',
\ 'i'  : 'I',
\ 'R'  : 'R',
\ 'c'  : 'C',
\ 'v'  : 'V',
\ 'V'  : 'V',
\ '' : 'V',
\ 's'  : 'S',
\ 'S'  : 'S',
\ '' : 'S',
\ }

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
let g:table_mode_corner='|'

" You Complete Me
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>gg :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>

" Vim Markdown
let g:vim_markdown_folding_disabled = 1

" NERD Tree
map <leader>ft :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Neomake
autocmd! BufWritePost * Neomake

" Vim Leader Guide
let g:lmap =  {}
let g:lmap.f = { 'name' : 'File Menu' }

" Vim Leader Guide
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

" yapf
nnoremap <leader>pf :call yapf#YAPF()<CR>

" isort
nnoremap <leader>pi :Isort<CR>
