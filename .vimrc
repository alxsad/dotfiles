" General
set nocompatible
set ttyfast
set showmode
set showcmd
set title
set number
set hidden

" This is what files look like
set ffs=unix,dos,mac

" Update find path to search subdirectories
set path=$PWD/**

" No backups
set nobackup
set nowritebackup
set nowb
set noswapfile

" Tab sanity
set expandtab
set tabstop=4
set shiftwidth=4

" Keep lots of history/undo
set undolevels=1000

" Show hidden characters, tabs, trailing whitespace
set list
set listchars=tab:→\ ,trail:·,nbsp:·

filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
call vundle#end()
filetype plugin indent on

" Editor
set encoding=utf-8 nobomb
set fileencodings=utf-8,cp1251
set termencoding=utf-8
set fileformat=unix
set fileformats=unix
set backspace=indent,eol,start
set winminheight=1
set autoread
set visualbell
set laststatus=2
set autoindent
set copyindent
set smartindent
set softtabstop=4
set smarttab
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase
set gdefault
set modifiable

" Plugin settings
map <C-n> :NERDTreeToggle<CR>
map <C-g> :GitGutterToggle<CR>
let g:airline#extensions#tabline#enabled=1

" Theme
syntax enable
set cursorline
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Ignore python
set wildignore+=*.pyc,*.pyo,*/__pycache__/*
" Ignore temp files
set wildignore+=*.swp,~*
" Ignore archives
set wildignore+=*.zip,*.tar

" Different tab/space stops"
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType make setlocal noexpandtab

