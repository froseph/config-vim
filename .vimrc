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

" Bundle magering bundle
Bundle 'gmarik/vundle'

" Github managed

" vim managed
Bundle 'Zenburn'

" Non github managed

" Initialize vim bundles
if init
    BundleInstall
endif

" Config
color zenburn
syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

