"set syntax basics
syntax enable
set background=dark
"colorscheme
colorscheme badwolf

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
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"set line numbers"
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

"fix pasting into vim
set paste

"remaps
nnoremap j gj
nnoremap k gk

"sets autocomplete function to on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"set folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

