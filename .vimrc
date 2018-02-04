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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

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


call vundle#end()


filetype plugin indent on
syntax enable
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
colorscheme atom-dark-256


let mapleader = " "


set autoindent
set ts=4
set ignorecase
set smartcase
set hlsearch
set modelines=0
set wildmenu
set wildmode=longest:full
set number
set dict=/usr/share/dict/words
set cursorline
set showcmd
set ruler
set incsearch
set cmdheight=2
set completeopt=menu
set mousemodel=popup
set mouse=a
set backspace=2
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set foldcolumn=1
set showmatch
set nolist

set splitbelow
set splitright

let g:ctrlp_map = 'Q'
let g:ctrlp_cmd = 'CtrlP'


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


no <down> ddpzz
no <left> :bp<cr>
no <right> :bn<cr>
no <up> ddkPzz
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>


imap <C-j> <ESC>j
imap <C-k> <ESC>k
inoremap <C-l> <ESC>A
imap <C-m> <ESC>o
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


" ------ NERDTree ------

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nmap t :NERDTreeToggle<CR>
nmap <silent> T :NERDTreeFind<cr>




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

let g:airline_theme='bubblegum'

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0

let g:SuperTabCrMapping = 0


" ------- Powerline -------
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256





" ------ DEVICONS -------
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_unite=1
let g:webdevicons_enable_airline_statusline=1

