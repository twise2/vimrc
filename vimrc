"set syntax basics
syntax enable
set background=dark
"colorscheme
:color desert
"sets comments to lightblue rather than default grey
hi Comment      ctermfg=lightblue
"sets cursorline to be bold and not white underline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

"make backspace work like it should
set backspace=indent,eol,start

"set vim to ignore the case when searching
"set vim to highlight search 
"move as search continues
set ignorecase " case insensitive
set hlsearch   " search highlighting

"smart tab options
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
"set line numbers"
set number
set showcmd  
set cursorline
filetype indent on 
set wildmenu
set showmatch
set incsearch           " search as characters are entered

"fix pasting into vim
set paste
"remaps
nnoremap j gj
nnoremap k gk
"remaps visual to be how it looks and not by lines

"sets autocomplete function to on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"set folding for html
:setlocal foldmethod=syntax

