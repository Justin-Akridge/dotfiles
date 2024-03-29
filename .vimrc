" [TODO]: Set up quickfix for quick compile-edit time
" Don't try to be vi compatible
set nocompatible

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" ctrl-f or enter to search under cursor & n to go to next word
"nnoremap <silent> <C-f> :let searchTerm = '\v<'.expand("<cword>").'>' <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

" maps ctrl-a to copy entire file
map <C-a> ggVG

" maps ctrl-s to save file
map <C-s> :w <CR>

" copy to clipboard
map <C-c> "+y

" removes highlight search
nnoremap <F1> :set hlsearch!<CR>

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set colorcolumn=80
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=5
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk
func! MakeorGcc()
  :write
  if filereadable('Makefile')
    :!make
  else 
    :!clang++ -std=c++20 % -o %< && ./%<
  endif
endfunc

nnoremap ' :call MakeorGcc()<cr>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
"inoremap <F1> <ESC>:set invfullscreen<CR>a
"nnoremap <F1> :set invfullscreen<CR>
"vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Use mouse
set mouse=a

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
