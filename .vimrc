" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle magering bundle
Bundle 'gmarik/vundle'

" Github managed

" vim managed
Bundle 'Zenburn'

" Non github managed

" Config
color zenburn
syntax on
filetype plugin indent on
