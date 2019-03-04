"replace colon and semi-colon
nnoremap ; :
nnoremap ; :

"replace quotations
nnoremap ' "
nnoremap " '

"system configuration
set tabstop=4
set nosmartindent
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set noswapfile
set runtimepath+=~/.vim/bundle/neobundle.vim
set nocompatible

"display configuration
set title
set showmatch
syntax on
set tabstop=4
set smartindent
set number
set list

"searching configuration
set ignorecase
set smartcase
set wrapscan
set incsearch

"complation of brackets
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"vim-flake8
filetype off

if has('vim_starting')
    call neobundle#begin(expand('~/.vim/bundle/neobundle.vim'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'scrooloose/syntastic'
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list=2
    NeoBundle 'rodjek/vim-puppet', {'autoload': {'filetypes' : ['python']}}
    NeoBundle 'nvie/vim-flake8', {'autoload': {'filetypes': ['python']}}
    NeoBundleCheck
    call neobundle#end()
endif

autocmd BufWritePost *.py call Flake8()
filetype plugin on
filetype indent on

"configuration for php
autocmd Filetype php, set tabstop=2
autocmd Filetype php, set shiftwidth=2
autocmd Filetype php, set softtabstop=2
