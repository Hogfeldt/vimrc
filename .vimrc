" Spaces and tabs
set tabstop=4
set softtabstop=4

" UI config
set number
set showcmd	" show command in bottom
set cursorline	" highlight current line
filetype indent on	" load filetype-specific indent files
set wildmenu	" visual autocomplete for command menu
set lazyredraw	" redraw only when we need to
set showmatch	" highlight matching [{()}]

" Airline settings
syntax enable
set guifont=Inconsolata-dz\ for\ Powerline\ 16
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_theme='wombat'

" Colors and fonts
set t_Co=256
colorscheme jellybeans

" Vim-latexsuite
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
" Also, this installs to /usr/share/vim/vimfiles, which may not be in your runtime path (RTP). Be sure to add it too, e.g:
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

