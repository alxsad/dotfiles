set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on
set encoding=utf-8 nobomb
set fileencodings=utf-8,cp1251
set termencoding=utf-8
set fileformat=unix
set fileformats=unix
set nobackup
set noswapfile
set backspace=indent,eol,start
set winminheight=1
set autoread
set number
set visualbell
set laststatus=2
set showcmd
set autoindent
set copyindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase
set gdefault
set modifiable

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-g> :GitGutterToggle<CR>
let g:airline#extensions#tabline#enabled=1

syntax enable
set cursorline
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

