" Vundle setup
set nocompatible
filetype off

let init=0
" Initialize vundle if it does not exist
if !isdirectory(expand('$HOME/.vim/bundle/vundle'))
    let out = system('git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle')
    let init=1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle managing bundle
Bundle 'gmarik/vundle'
" Git
Bundle 'tpope/vim-fugitive'


" Github managed

" vim-script.org managed
" My colors
Bundle 'Zenburn'
" Python syntax
Bundle 'python.vim--Vasiliev'
Bundle 'trailing-whitespace'
Bundle 'localvimrc'
"Bundle 'vcscommand.vim' other vcs systems

" Other git source

" Initialize vim bundles
if init
    BundleInstall
endif

" Config
color zenburn
syntax on
filetype on
filetype plugin indent on

set title
set history=120             " History
set autoindent		        " self-explanatory
set splitright                  " new window to the right on vsplit
set splitbelow                  " new window below on split
set showmode                    " Indicates when in Insert, Edit mode, etc.
set ruler

" Tab options
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search options
set ignorecase		        " ignore case on searches
set smartcase		        " overrides ignorecase sometimes
set incsearch               " Turn on incremental search

" Python
let python_highlight_all=1 " python.vim--Vasiliev option
au FileType python set textwidth=79 " PEP-8 Friendly

" Got way too used to auto cd into directory of the file
autocmd BufEnter * silent! lcd %:p:h

