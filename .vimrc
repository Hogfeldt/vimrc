""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Install vim-plug if it's not install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins
call plug#begin('~/.vim/plugged')

" Plugin for writing LaTeX
Plug 'vim-latex/vim-latex'

" Autocomplete in Vim
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer' }

" Vim colorscheme
Plug 'nanotech/jellybeans.vim'

" Smart information bar at the buttom
Plug 'vim-airline/vim-airline'

" Black Python formatter
Plug 'ambv/black'

" haskell intellisense
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" GTD 
Plug 'phb1/gtd.vim'

"R plugin
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

call plug#end()

" Plugins configurations
:colorscheme jellybeans

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GTD Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:filetype plugin on
:let g:gtd#dir = '~/notes'
:let g:gtd#default_context = 'hjem'
:let g:gtd#default_action = 'inbox'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-latex Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tex_flavor='latex'

" Set pdf as default output format
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable wildmenu
set wildmenu

" Enable syntax highlighting
syntax enable

" Show matching brackets when text indicator is over them
set showmatch

" Create matching brackets
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha

" Show line numbers
set number

" Show bottom ruler
set ruler

set showcmd

" Tabs are spaces
set expandtab
" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in tab when editing
set softtabstop=4
" Number of spaces when auto indenting
set shiftwidth=4

" Match indentation of previous line
set autoindent

filetype plugin indent on


