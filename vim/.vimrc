" See ':help E355'
" See ':help Q_op'

" =============
" == Options ==
" =============

syntax enable
filetype on

" General Settings
set nocompatible
set autoread
set fileencoding=utf-8
set conceallevel=0
set timeoutlen=200
set updatetime=1000

" Indentation
set smartindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2

" User Interface
set background=dark
set completeopt=menu,menuone,noinsert
set pumheight=10
set showmatch
set ruler
set mouse=a

" Split Configuration
set splitbelow
set splitright

" Backup / Swap / Undo
set nobackup
set nowritebackup
set noswapfile
set history=10000
if has('persistent_undo')         "check if your vim version supports
  set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
  set undofile                    "turn on the feature
endif

" Editor Display
set number
set cursorline
set relativenumber
set numberwidth=4
set signcolumn=yes
set nowrap
set scrolloff=8
set sidescrolloff=8

" Search Configuration
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Miscellaneous
set shortmess+=c
set laststatus=3
set termguicolors
set whichwrap+=h,l,<,>,[,]
set formatoptions-=cro

" =============
" == Keymaps ==
" =============

" Remap space as leader key
nnoremap <silent> <Space> <Nop>
let mapleader=" "
let maplocalleader=" "

" Toggle left explorer
nnoremap <silent> <leader>e :Lex 30<cr>

" Resize with arrows
nnoremap <silent> <leader>w<Up> :resize +2<cr>
nnoremap <silent> <leader>w<Down> :resize -2<cr>
nnoremap <silent> <leader>w<left> :vertical resize -2<cr>
nnoremap <silent> <leader>w<Right> :vertical resize +2<cr>

" Window navigation
nnoremap <silent> <leader>wh :wincmd h<cr>
nnoremap <silent> <leader>wj :wincmd j<cr>
nnoremap <silent> <leader>wk :wincmd k<cr>
nnoremap <silent> <leader>wl :wincmd l<cr>

" Buffer navigation
nnoremap <silent> <S-l> :bnext<cr>
nnoremap <silent> <S-h> :bprevious<cr>

" Exit/Close buffer
nnoremap <silent> <leader>qw :exit<cr>
nnoremap <silent> <leader>qq :bdelete<cr>

" <esc> is too far
inoremap <silent> jk <esc>

" Stay in indent mode
vnoremap <silent> < <gv
vnoremap <silent> > >gv

" Split windows :TODO
nnoremap <silent> <leader>w<bar> :vsplit<cr>
nnoremap <silent> <leader><bar> :vsplit<cr>
nnoremap <silent> <leader>w- :split<cr>
nnoremap <silent> <leader>- :split<cr>

" Search easier
function GetVisualSelection()
  " Save the current unnamed register content
  let temp_variable = @"

  " Yank the current(last) visual selection
  normal gvy

  " Set the search pattern to the visual selection, escaping necessary characters
  let @/=substitute(escape(@", "\/.*$^~[]"), "\n", "\\n", "g")

  " Restore the unnamed register content
  let @" = temp_variable
endfunction

vnoremap <silent> // :<c-u>:call GetVisualSelection()<Bar>:set hlsearch<cr>
vnoremap <silent> /s :<c-u>:call GetVisualSelection()<Bar>:set hlsearch<cr>:%s//
nnoremap <silent> <esc> <esc>:set nohlsearch<cr>
vnoremap <silent> <esc> <esc>:set nohlsearch<cr>
