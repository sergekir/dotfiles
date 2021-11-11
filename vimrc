" Config
set nocompatible
set noswapfile
filetype off
set clipboard=unnamed


" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'chiel92/vim-autoformat'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'fisadev/vim-isort'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-pydocstring'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/vim-which-key'
Plug 'majutsushi/tagbar'
Plug 'neomake/neomake'
Plug 'preservim/nerdcommenter'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimjas/vim-python-pep8-indent'
Plug 'ahmedkhalf/lsp-rooter.nvim'
Plug 'p00f/nvim-ts-rainbow'

" Libraries
Plug 'nvim-lua/plenary.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Themes
Plug 'chriskempson/base16-vim'

" Spelling
Plug 'kamykn/spelunker.vim'

" Syntax and Languages
Plug 'aklt/plantuml-syntax'
Plug 'cespare/vim-toml'
Plug 'chr4/nginx.vim'
Plug 'chrisbra/csv.vim'
Plug 'glench/vim-jinja2-syntax'
Plug 'martinda/jenkinsfile-vim-syntax'
Plug 'plasticboy/vim-markdown'

call plug#end()

filetype plugin indent on

"Disable python 2
let g:loaded_python_provider = 0
let g:python3_host_prog='/home/linuxbrew/.linuxbrew/bin/python3'


"Editing
set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set smarttab

autocmd Filetype dockerfile setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype jenkins setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype jinja setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype markdown setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype nginx setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype perl setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype plantuml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype rst setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype sh setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype toml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype lua setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype vim setlocal ts=2 sw=2 sts=2 expandtab

autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * set formatoptions-=cro

" Theme
set termguicolors
let base16colorspace=256
colorscheme base16-eighties
let g:airline_theme = 'base16_eighties'


"Interface

set relativenumber
set number
set nowrap

set showmatch
set hlsearch
set cursorline
set scrolloff=5

set splitbelow
set splitright
set mouse=

set noshowmode

syntax on

" Spelling
set spelllang=en,ru
hi SpellBad ctermbg=Black
hi SpellCap ctermbg=Black
set nospell


"Key Bindings

let mapleader=' '
let maplocalleader=' '
nnoremap ; q:i
nnoremap : q:i
vnoremap ; q:i
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

" Vim
nnoremap <Leader>vcr :source $MYVIMRC<CR>
nnoremap <Leader>vce :edit $MYVIMRC<CR>

nnoremap <Leader>vpu :PlugUpdate<CR>
nnoremap <Leader>vpd :PlugDiff<CR>
nnoremap <Leader>vpg :PlugUpgrade<CR>
nnoremap <Leader>vpc :PlugClean<CR>
nnoremap <Leader>vpi :PlugInstall<CR>

" surround.vim
vmap s S

" Snippets
let g:UltiSnipsExpandTrigger='<c-s>'

" Nerd Commenter
nmap <Leader>cp <Leader>cyp
nmap <Leader>cP <Leader>cyP
vmap <Leader>cp <Leader>cy`>p
vmap <Leader>cP <Leader>cyP

" vim-autoformat
nnoremap <Leader>af :Autoformat<CR>

" TagBar
nmap <Leader>ct :TagbarToggle<CR>
let g:tagbar_map_showproto = "<Nop>"

" Search
nnoremap <Leader>nh :noh<CR>

" Ack
nnoremap <Leader>/ :Ack!<Space>

" vim-pydocstring
nnoremap <Leader>ds :Pydocstring<CR>

" Plugin settings

" Airline
set laststatus=2
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#keymap#enabled = 0
let g:airline_detect_spell = 0
let g:airline_section_y = 0
let g:airline_section_x = 0
"let g:airline_section_z = '%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#%#__accent_bold#%{g:airline_symbols.colnr}%v%#__restore__#'
let g:airline#extensions#poetv#enabled = 0
let g:airline_symbols_ascii = 1

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

" VIM Table Mode
let g:table_mode_corner='|'

" Vim Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" Neomake
autocmd! BufWritePost * Neomake
autocmd! BufReadPost * Neomake

" Vim Leader Guide
let g:lmap =  {}
let g:lmap.f = {'name' : 'File Menu'}

" vim-autoformat
let g:formatters_jinja = ['htmlbeautify']
let g:formatters_htmldjango = ['htmlbeautify']

" Plug
let g:plug_threads = 5
let g:plug_timeout = 10
let g:plug_retries = 1

" Which Key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

" Open Notes
nnoremap <leader>on :edit ~/Work/notes/notes.md<CR>

" Ack
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
let g:ack_autoclose = 1
let g:ack_use_cword_for_empty_search = 1
cnoreabbrev Ack Ack!

" Neomake
let g:neomake_info_sign = {'text': 'i', 'texthl': 'NeomakeInfoSign'}

" Fugitive
let g:fugitive_dynamic_colors = 0

" vim-pydocstring
let g:pydocstring_doq_path = '/home/linuxbrew/.linuxbrew/bin/doq'

noremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menu,menuone,noselect

set shortmess+=c

nnoremap <leader>gg :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gr :lua vim.lsp.buf.references()<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

lua << EOF
local cmp = require'cmp'

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<C-c>'] = cmp.mapping.complete(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  })
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.pyright.setup{
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoImportCompletions = false,
      }
    }
  }
}
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

require('telescope').setup {
  file_ignore_patterns = {"__pycache__/.*", ".venv"},
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case" or "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require('gitsigns').setup {
  signs = {
    add = {hl='GitSignsAdd', text = '+', numhl='GitSignsAddNr', linehl='GitSignsAddLn'},
    change = {hl='GitSignsChange', text='~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete = {hl='GitSignsDelete', text='-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete = {hl='GitSignsDelete', text='‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl='GitSignsChange', text='~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  }
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'python', 'bash', 'comment', 'css', 'dockerfile', 'html', 'javascript', 'json', 'toml', 'yaml'
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    colors = {'#f2777a', '#99cc99', '#ffcc66', '#6699cc', '#cc99cc', '#66cccc', '#d3d0c8'},
  }
}

require("lsp-rooter").setup {}
EOF
