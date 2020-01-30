set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin(stdpath('data') . '/plugged')

Plug 'oblitum/rainbow'
Plug 'ryanoasis/nerd-fonts'
Plug 'ryanoasis/vim-devicons'

" --------- THEMES ----------
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'bcicen/vim-vice'
Plug 'tstelzer/welpe.vim'
Plug 'mhinz/vim-janah'
Plug 'dikiaap/minimalist'
Plug 'zacanger/angr.vim'
Plug 'bellma101/vim-snazzy'
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'

" -------- OTHER ---------
"Plug 'L9'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugs'}
Plug 'alvan/vim-closetag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
" Plug 'Yggdroot/indentLine'

"Plug 'davidhalter/jedi-vim'
"Plug 'neoclide/coc-prettier'

"Plug 'Valloric/YouCompleteMe'
"Plug 'tpope/vim-fugitive'


call plug#end()


highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

filetype plugin indent on
syntax enable
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
"set guifont=Fira\ Mono\ Bold\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
colorscheme onedark

let mapleader = " "


set autoindent
set backspace=2
set cindent
set cmdheight=2
set completeopt=menu
set cursorline
set dict=/usr/share/dict/words
set expandtab
set foldcolumn=1
set hidden
set history=10000
set hlsearch
set ignorecase
set incsearch
set modelines=0
set mouse=a
set mousemodel=popup
set nolist
set number
set pastetoggle=<leader>v
set relativenumber
set ruler
set shiftwidth=1
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set ts=2
set undodir=$HOME/tmp/vimundo
set undofile
set undolevels=1000
set undoreload=10000
set updatetime=300
set wildmenu
set wildmode=longest:full

vmap <Tab> >gv
vmap <S-Tab> <gv


nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>n :noh<cr>
nmap <leader>s :windo set scrollbind
nmap <leader>S :windo set scrollbind!
nmap <leader>c :bd<cr>
nmap <leader>e :Explore<cr>
nnoremap <leader>a ggVG

" ECLIM keypams
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

map <C-n> :bn<cr>
map <C-p> :bp<cr>


no <down> ddp
no <left> :bp<cr>
no <right> :bn<cr>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>


"imap <C-x> <Nop>
imap jj <ESC>
imap <C-j> <ESC>j
imap <C-k> <ESC>k
inoremap <C-l> <ESC>A
imap <C-space> <ESC>
vmap <C-space> <ESC>

nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l
nmap ca, f,ld2F,i,<ESC>a

nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap ] ]zz
nmap [ [zz
nmap j jzz
nmap k kzz
nmap h hzz
nmap l lzz
nmap <C-r> <C-r>zz
nmap gO O<ESC>j
nmap go o<ESC>k
nmap I ^i
nmap A $a


vmap } }zz
vmap { {zz
vmap j jzz
vmap k kzz
vmap h hzz
vmap l lzz

" ---- NEOVIM ----

" deoplete plugin
let g:deoplete#enable_at_startup = 1
inoremap <expr> <M-j> pumvisible() ? "\<C-n>" : "\<M-j>"
inoremap <expr> <M-k> pumvisible() ? "\<C-p>" : "\<M-k>"


" coc-prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ------ RAINBOW BRACES  -------
let g:rainbow_active = 1
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


" ------ DEVICONS -------
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_unite=1
let g:webdevicons_enable_airline_statusline=1

" ----- ECLIM ----- "
let g:EclimBrowser = 'google-chrome'
"let g:EclimCompletionMethod = 'omnifunc'
let g:SuperTabDefaultCompletionType = 'context'


" ------ CtrlP -------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

"set wildignore+=*.swp,*.zip,*.swo,*.pyc,*.class
nnoremap <leader>f :CtrlP<CR>


" vim ident guide
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" ------ NERDTree ------
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nmap t :NERDTreeToggle<CR>
nmap <silent> T :NERDTreeFind<cr>

let NERDTreeIgnore = ['\.pyc$', '\.class$']

" ------ JEDI VIM -------

let g:jedi#completion_enabled = 0

" ------ SYNTATSTIC

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for java
let g:syntastic_java_checkers = []


" ------ YouCompleteMe -------

" let g:ycm_pyt

" ------ AIRLINE -------

let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_splits = 0
let g:tsuquyomi_disable_default_mappings = 1

"let g:airline_theme='bubblegum'
let g:airline_theme='dracula'

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0

let g:SuperTabCrMapping = 0


" ------- Powerline -------
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

colorscheme dracula

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction


nmap <leader>t :call TrimWhitespace()<CR>

let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt']
\}
let g:ale_fix_on_save = 1
