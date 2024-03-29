if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
Plug 'alvan/vim-closetag'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'hdima/python-syntax'
Plug 'othree/html5.vim'
Plug 'dense-analysis/ale'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'derekwyatt/vim-scala'

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'joshdick/onedark.vim'

call plug#end()

" Vim configs
syntax on
colorscheme onedark
set encoding=UTF-8
set number
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set list
set listchars=tab:··,trail:·,precedes:·,
set nobackup
set nowritebackup
set showcmd

" Fechar vim se apenas a aba de diretórios estiver aberta
let g:NERDTreeWinSize=22
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Update time of git status line bar
set updatetime=100

" Set indentation char
let g:indentLine_char = '⎸'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1

" Set autoclose config
let g:closetag_filenames = '*.html, *.xhtml, *js'

" Set status line config
set laststatus=2
set noshowmode

" Enable vim airline to tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#show_tabs = 1

" Airline theme and fonts
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

" Airline symbols
" airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Ale config
let g:ale_fixers = {
\	'javascript': ['eslint']
\ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '
" let g:ale_fix_on_save = 1


"Add shortcut keyboard for NERDTREE plugin
map <C-b> :NERDTreeToggle<CR>

