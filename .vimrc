set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
call vundle#rc()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" added nerdtree
Plugin 'scrooloose/nerdtree'
"supertab
Plugin 'ervandew/supertab'
"vi-fugitive
Plugin 'tpope/vim-fugitive'
"vim polyglot 
Plugin 'sheerun/vim-polyglot'
"vim sensible
Plugin 'tpope/vim-sensible'
"cntrl-P
Plugin 'kien/ctrlp.vim'
"NGINX syntax shit
Plugin 'mutewinter/nginx.vim'
" Search helper
Plugin 'henrik/vim-indexed-search'
"Syntastic 
Plugin 'Syntastic'
"Airline for Powerline
Plugin 'vim-airline/vim-airline'
"   Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
"   JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
"   HTML
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'
Plugin 'mattn/emmet-vim'
"   XML
Plugin 'othree/xml.vim'


call vundle#end()            " required

filetype plugin indent on    " required
set shell=/bin/bash "for use with fish shell

"sets comments to lightblue rather than default grey
hi Comment      ctermfg=lightblue

"sets cursorline to be bold and not white underline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

"make backspace work like it should
set backspace=indent,eol,start

"search chages
set ignorecase " case insensitive
set hlsearch   " search highlighting
set incsearch           " search as characters are entered

"smart tab options
set tabstop=2       " number of visual spaces per TAB
set softtabstop=0   " number of spaces in tab when editing
set shiftwidth=2
set expandtab       " tabs are spaces
set smarttab

"set line numbers"
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

"remaps
nnoremap j gj
nnoremap k gk

"sets autocomplete function to on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"set folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

"expected mouse functionality, copy code correct, scroll correct
set mouse=a
set clipboard=unnamed

"colorscheme
syntax on
set background=dark
set t_Co=256
colorscheme badwolf

"cntrl -n  to nerd tree
map <C-n> :NERDTreeToggle<CR>

"powerline utility
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'