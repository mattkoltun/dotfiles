set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'tpope/vim-fugitive'

Plugin 'ryanoasis/nerd-fonts'
Plugin 'ryanoasis/vim-devicons'
" --------- THEMES ----------
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'joshdick/onedark.vim'
Plugin 'bcicen/vim-vice'
Plugin 'tstelzer/welpe.vim'
Plugin 'mhinz/vim-janah'
Plugin 'dikiaap/minimalist'
Plugin 'zacanger/angr.vim'
Plugin 'bellma101/vim-snazzy'


call vundle#end()


filetype plugin indent on
syntax enable
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set guifont=Fira\ Mono\ Bold\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
colorscheme onedark

let mapleader = " "

set history=10000

set autoindent
set backspace=2
set cindent
set cmdheight=2
set completeopt=menu
set cursorline
set dict=/usr/share/dict/words
set expandtab
set foldcolumn=1
set hlsearch
set ignorecase
set incsearch
set modelines=0
set mouse=a
set mousemodel=popup
set nolist
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=4
set wildmenu
set wildmode=longest:full
set ts=4
set tabstop=4
set relativenumber

set splitbelow
set splitright


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

map <C-n> :bn<cr>
map <C-p> :bp<cr>

set pastetoggle=<leader>v


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

" ------ DEVICONS -------
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_unite=1
let g:webdevicons_enable_airline_statusline=1

" ----- ECLIM ----- "
let g:EclimBrowser = 'google-chrome'
let g:EclimCompletionMethod = 'omnifunc'
"let g:SuperTabDefaultCompletionType = 'context'


" ------ CtrlP -------
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


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


colorscheme dracula
