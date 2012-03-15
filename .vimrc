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

" Github managed
Bundle 'nathanaelkane/vim-indent-guides'
" Git
Bundle 'tpope/vim-fugitive'
Bundle 'sophacles/vim-bundle-mako'
Bundle 'jelera/vim-javascript-syntax'
" Try zencoding insteard of sparkup/
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-script.org managed
" My colors
Bundle 'Zenburn'
" Python syntax
Bundle 'python.vim--Vasiliev'
Bundle 'trailing-whitespace'
Bundle 'localvimrc'
Bundle 'simplenote.vim'
Bundle 'Lucius'
"Bundle 'vcscommand.vim' other vcs systems

" Other git source

" Initialize vim bundles
if init
    BundleInstall
endif

" Plugin configs

" Local vimrc options
let g:localvimrc_name = 'local.vimrc'
let g:localvimrc_ask = 0

" Python
let python_highlight_all=1 " python.vim--Vasiliev option

" Indent Guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=240
let g:indent_guides_start_level = 2

" Fuck you omni complete
let g:omni_sql_no_default_maps = 1

" Config
color lucius
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

" Key bindings
" Split w indow keys
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-m> <C-w>_


" Auto commands
" Got way too used to auto cd into directory of the file
autocmd BufEnter * silent! lcd %:p:h
au FileType python set textwidth=79 " PEP-8 Friendly


" Plugin settings
source ~/.private/simplenoterc
