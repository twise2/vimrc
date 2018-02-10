set nocompatible              " be iMproved, required
filetype off                  " required

" set up vundle if not set up
let iCanHazVundle=1
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif

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
"  Python
Plugin 'hdima/python-syntax'
"  Colorshceme
Plugin 'sjl/badwolf'
"Read texts in vim
Plugin 'vim-scripts/textutil.vim'


if iCanHazVundle == 0
    echo "Installing Vundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
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
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

"remaps
nnoremap j gj
nnoremap k gk

"set persistent undo
set undodir=/Users/Twise78738/.vim/undo//
set undofile
set undolevels=1000
set undoreload=10000

"persistent cursor
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

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

"eslint syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflake']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']
let g:syntastic_javascript_checkers = ['eslint']

"map :W to save because i can't type
:map :W :w

