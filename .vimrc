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

autocmd BufWritePost *.py call Flake8()
filetype plugin on
filetype indent on
