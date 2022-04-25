" Disable compatibility with vi "
set nocompatible

" Set up Vundle if needed "
let iCanHazVundle=1
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif

" Vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" rclet Vundle manage Vundle, required "
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'chrisbra/Colorizer'
"Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/VimCompletesMe'
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'mutewinter/nginx.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'Syntastic'
Plugin 'quramy/tsuquyomi'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'pangloss/vim-javascript'
"Plugin 'numirias/semshi'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'python', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plugin 'mattn/emmet-vim'
Plugin 'othree/xml.vim'
Plugin 'hdima/python-syntax'
Plugin 'vim-scripts/textutil.vim'
Plugin 'aliou/sql-heredoc.vim'
Plugin 'flazz/vim-colorschemes'
if iCanHazVundle == 0
    echo "Installing Vundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
call vundle#end()

filetype plugin indent on

" Formatting "
hi Comment      ctermfg=lightblue " Set comments to light blue "
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40 " sets cursorline to be bold and not white underline "
set backspace=indent,eol,start                  " make backspace work like it should "
set ignorecase      " case insensitive search "
set hlsearch        " search highlighting "
set incsearch       " search as characters are entered "
set tabstop=2       " number of visual spaces per tab "
set softtabstop=0   " number of spaces in tab when editing "
set shiftwidth=2
set foldlevel=99    " unfold on start "
set expandtab       " tabs are spaces "
set smarttab
set number          " show line numbers "
set showcmd         " show command in bottom bar "
filetype indent on  " load filetype-specific indent files "
set wildmenu        " visual autocomplete for command menu "
set lazyredraw      " redraw only when we need to. "
set showmatch       " highlight matching [{()}] "

syntax on
set re=0            " make typescript not a bad time

set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme Monokai
"colors i like
" Monokai zellner badwolf blacksea blueprint beekai blackboard adaryn wasabi256 Atelier_DuneDark


" Keyboard "
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

nnoremap j gj
nnoremap k gk
:map :W :w
:map :Q :q
:map :WQ :wq
:map :wQ :wq
:map :Wq :wq


" Undo "
set undodir=/Users/tristanwise/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Autocomplete "
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

" Mouse "
set mouse=a
set mouse=v
set clipboard=unnamed


"set spellcheck"
":set spell spelllang=en_us
":setlocal spell spelllang=en_us



" Sidebar "
map <C-n> :NERDTreeToggle<CR>

" Bottom Bar "
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='raven'

" Linting "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflake']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_aggregate_errors = 1

"let g:syntastic_typescript_tsc_fname = ''
let g:syntastic_javascript_eslint_args = ['--fix']
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"let g:syntastic_debug = 1


" Prettification "
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
" html prettier
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#trailingComma = 'all'
let g:prettier#exec_cmd_path = "/Users/tristanwise/.nvm/versions/node/v14.4.0/bin/prettier"

" hex code color highlight
let g:colorizer_auto_color = 1 
let g:Hexokinase_highlighters = ['backgroundfull']
let g:colorizer_colornames = 0
augroup auto_colorize
autocmd!
autocmd FileType * :ColorHighlight
augroup END


"remove whitespace on save"
"autocmd BufWritePre * :%s/\s\+$//e"

"run prettier on save"
"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
