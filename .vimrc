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
Bundle 'scrooloose/syntastic'
Bundle 'gregsexton/MatchTag'
Bundle 'tpope/vim-fugitive'
Bundle 'sophacles/vim-bundle-mako'
Bundle 'jelera/vim-javascript-syntax'
"Bundle 'pangloss/vim-javascript'
" Try zencoding insteard of sparkup?
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Zencoding follows http://docs.emmet.io/ is is updated thus the switch
Bundle 'mattn/zencoding-vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'waylan/vim-markdown-extra-preview'
Bundle 'Valloric/MatchTagAlways'
Bundle 'groenewege/vim-less'
Bundle 'Floobits/floobits-vim'
Bundle 'taglist.vim'

" Other git source

" vim-script.org managed
" My colors
Bundle 'Zenburn'
Bundle 'Lucius'
Bundle 'altercation/vim-colors-solarized'
Bundle 'editorconfig-vim'
" Provides python syntax
Bundle 'python.vim--Vasiliev'
Bundle 'trailing-whitespace'
Bundle 'localvimrc'
Bundle 'simplenote.vim'
"Bundle 'vcscommand.vim' other vcs systems
Bundle 'mako.vim--Torborg'
Bundle 'mako.vim'

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

" MatchTagAlways
let g:mta_filetypes = {
            \ 'html' : 1,
            \ 'xhtml' : 1,
            \ 'xml' : 1,
            \ 'jinja' : 1,
            \ 'mako' : 1,
            \}

" Config
set background=light
colorscheme solarized
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
au FileType python set textwidth=80 " PEP-8 Friendly
au FileType mako set textwidth=80
au FileType javascript set textwidth=80
au FileType markdown set textwidth=80
au FileType mkd set textwidth=80


" Plugin settings
source ~/.config/simplenote/simplenote.vimrc

set laststatus=2
set statusline+=%{SyntasticStatuslineFlag()}\ %f%M%R\ (%l,%c\ %P)

" Highlight the column we need to do a break
set colorcolumn=+0
set modeline

" Deletness
set backspace=indent,eol,start

" taglist
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Close_On_Select = 1
"let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>"
