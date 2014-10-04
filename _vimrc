set nocompatible
set directory=$HOME/vimtmp
set backupdir=$HOME/vimbackup
set clipboard=unnamed
set number
set hidden
set incsearch
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set showmatch
set smartcase
set nowrapscan

" Color Scheme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Start NeoBundle settings
set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('$HOME/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck
" End NeoBundle settings
" autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 1
