syntax on
colorscheme jellybeans
set nowrap
set number
set relativenumber
set hlsearch
set ignorecase
set smartcase
set visualbell
set nobackup
set encoding=utf-8
set clipboard=unnamed

vnoremap > >gv
vnoremap < <gv

highlight CursorLine guibg=lightblue ctermbg=darkblue
set wildmenu
set laststatus=2
set cmdheight=2
set nobackup
set nowritebackup
set mouse=a
set paste
set splitbelow
set splitright
set ruler

set cursorline
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{wordcount()[\"words\"]}

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()
filetype plugin indent on

" Nerdtree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <C-n> :NERDTreeToggle<CR>


" Code indent wit space button
" set foldmethod=indent
" set foldlevel=99
" nnoremap <space> za

" ansible helpers
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0

" python helpers
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
