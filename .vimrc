
set nocompatible

set t_Co=256
"set cursorline!

filetype plugin indent on

set autoread

let mapleader = ","

set wildmenu
set ruler

set ignorecase
set incsearch
"set hlsearch

"set lazyredraw
"regex enable
set magic

set expandtab
set smarttab

" Show matching brackets when text indicator is over them
set showmatch 
" disable backup
set nobackup
set nowb
set noswapfile

set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set number
set relativenumber

"SPLITTING
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo/

"vim-plug
call plug#begin('~/.vim/plugged')
"Lightline plugin
Plug 'andys8/vim-elm-syntax'
Plug 'nelstrom/vim-mac-classic-theme'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Rust basic support
Plug 'rust-lang/rust.vim'

"Fancy file browser
Plug 'scrooloose/nerdtree'

Plug 'nanotech/jellybeans.vim'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'ron-rs/ron.vim'

Plug 'sheerun/vim-polyglot'
call plug#end()

"Airline config
"let g:airline_powerline_fonts = 1

"Jellybeans colorscheme
colo jellybeans
"colo mac_classic


let g:jellybeans_use_lowcolor_black = 1

"NERDTree
let NERDTreeQuitOnOpen=1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd VimEnter * set laststatus=0

"separator for windows
set fillchars+=vert:\ 

"Next buffer hotkey
nnoremap <C-n> :bnext<CR>
"nnoremap <C-b> :term ++close zsh<CR>
map <bar> ,c
map . ,c

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null
set backspace=indent,eol,start

"Tagbar binding
map <C-c> :TagbarToggle<CR>

"Run rustfmt automaticaly after :w
let g:rustfmt_autosave = 1

"disable docs 
"set completeopt-=preview

"for terminal
"set winheight=38
"set termwinsize=5x200

map <TAB> :NERDTreeToggle<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


"ENTER for tab accept
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<ENTER>"

"set termguicolors

"set laststatus=2
syntax on
set noshowmode

