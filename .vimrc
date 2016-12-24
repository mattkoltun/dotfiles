set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'L9'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'

" --------- THEMES ----------
Plugin 'bcicen/vim-vice'
Plugin 'tstelzer/welpe.vim'
Plugin 'mhinz/vim-janah'
Plugin 'dikiaap/minimalist'
Plugin 'zacanger/angr.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:airline_theme='onedark'
let g:onedark_termcolors=256
let mapleader = " "


syntax enable

set list
set listchars=tab:▸\ ,eol:¬

colorscheme onedark
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
set enc=utf-8
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set foldcolumn=1
set showmatch

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


let g:ctrlp_map = 'Q'
let g:ctrlp_cmd = 'CtrlP'


vmap <Tab> >gv
vmap <S-Tab> <gv
inoremap <S-tab> <C-D>


nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>


set pastetoggle=<leader>v
nnoremap <leader>a ggVG


no <down> ddpzz
no <left> w:bp<cr> 
no <right> w:bn<cr> 
no <up> ddkPzz
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

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


" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeQuitOnOpen=1
nmap t :NERDTreeToggle<CR>
nmap <silent> T :NERDTreeFind<cr>


" JAVASCRIPT

autocmd FileType javascript noremap <F4> :silent exe "s/\\v^(\\s*)(.+)$/\\1\\2\r\\1console.log(" . expand('<cword>') . ", '" . expand('<cword>') . "');"<CR>
"au FileType javascript let b:javascript_fold = 1
"au FileType javascript set foldmethod=syntax


" }}}
" Section AutoGroups {{{
" file type specific settings
augroup configgroup
    autocmd!

    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc,.vimrc.local,init.vim source %
    autocmd BufWritePost .vimrc.local source %
    autocmd FocusLost * silent! wa

    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']
    autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/
    
    autocmd!BufWritePost * Neomake
augroup END
    




" ------ AIRLINE -------

let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0

let g:tsuquyomi_disable_default_mappings = 1

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0

let g:SuperTabCrMapping = 0


" vim:foldmethod=marker:foldlevel=0"


















