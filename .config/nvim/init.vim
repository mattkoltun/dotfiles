call plug#begin('~/.local/share/nvim/plugged')

" --------- FONTS ----------
Plug 'ryanoasis/nerd-fonts'
Plug 'ryanoasis/vim-devicons'

" --------- THEMES ----------
Plug 'bcicen/vim-vice'
Plug 'bellma101/vim-snazzy'
Plug 'dikiaap/minimalist'
Plug 'dracula/vim'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-janah'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'tstelzer/welpe.vim'
Plug 'zacanger/angr.vim'
Plug 'victorze/foo'
Plug 'wadackel/vim-dogrun'
Plug 'sainnhe/edge'
Plug 'arzg/vim-colors-xcode'


" --------- FUNCTIONAL ----------
Plug 'oblitum/rainbow'                      " Rainbow braces
"Plug 'junegunn/rainbow_parentheses.vim'

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'


" --------- EDITOR ----------
Plug 'tmhedberg/matchit'
Plug 'davidhalter/jedi-vim'                 " Python autocomplete
Plug 'tpope/vim-surround'                   " surrounds words, sentences with [('')]
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/denite.nvim', { 'do' : ':UpdateRemotePlugins' }



" --------- FILE MANAGER ----------
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" --------- GIT PLUGINS ----------
Plug 'mhinz/vim-signify'                      " enable signcolumn
Plug 'tpope/vim-fugitive'

call plug#end()


" ------------------------------
" --------- SETTINGS  ----------
" ------------------------------

filetype plugin indent on
syntax enable
set encoding=utf-8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
"set guifont=Fira\ Mono\ Bold\ for\ Powerline\ Nerd\ Font\ Complete\ 12
"set t_Co=256

set background=dark

let mapleader = " "

set autoindent
set autoread
set backspace=2
set cindent
set cmdheight=2
set completeopt=menu
set cursorline
set dict=/usr/share/dict/words
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
set noshowmode
set number
set pastetoggle=<leader>v
set relativenumber
set ruler
set shortmess+=c
set showcmd
set showmatch
set signcolumn=yes
set smartcase
set splitbelow
set splitright
set termguicolors
set undodir=$HOME/tmp/vimundo
set undofile
set undolevels=1000
set undoreload=10000
set updatetime=300
set wildmenu
set wildmode=longest:full
set winbl=10
" TAB
set expandtab 		" insert spaces when TAB is pressed
set softtabstop=2 	" change number of spaces that a TAB counts for during editing ops
set shiftwidth=2 	" indentation amount for < and > commands



" --------- Reload CONFIG at save  ----------
nmap <leader>rr :source $MYVIMRC<cr> 
"autocmd bufwritepost init.vim source $MYVIMRC | AirlineRefresh
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC | AirlineRefresh
    autocmd BufWritePost $MYVIMRC AirlineRefresh
    autocmd BufWritePost $MYVIMRC redraw
    autocmd BufWritePost $MYVIMRC redrawstatus
augroup END " }


" ------------------------------
" --------- KEYBINDS  ----------
" ------------------------------


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
no <right> :bn<cr>
no <left> :bp<cr>

no <down> ddp
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>


imap jj <ESC>
imap <C-j> <ESC>j
imap <C-k> <ESC>k
inoremap <C-l> <ESC>A
imap <C-space> <ESC>
vmap <C-space> <ESC>

nmap H <Nop>
nmap L <Nop>
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l
nmap ca, f,ld2F,i,<ESC>a
nmap gO O<ESC>j
nmap go o<ESC>k
nmap I ^i
nmap A $a

nmap <C-r> <C-r>zz
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


vmap <Tab> >gv
vmap <S-Tab> <gv
vmap } }zz
vmap { {zz
vmap j jzz
vmap k kzz
vmap h hzz
vmap l lzz


" ECLIM keypams
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>


" ---------------------------------
" ------- NEOVIM SETTINGS  --------
" ---------------------------------

" Customize NERDTree directory
hi! NERDTreeCWD guifg=#99c794

" Make background color transparent for git changes
hi! SignifySignAdd guibg=NONE
hi! SignifySignDelete guibg=NONE
hi! SignifySignChange guibg=NONE

" Highlight git change signs
hi! SignifySignAdd guifg=#99c794
hi! SignifySignDelete guifg=#ec5f67
hi! SignifySignChange guifg=#c594c5


" FORMATTERS
"au FileType javascript setlocal formatprg=prettier
"au FileType javascript.jsx setlocal formatprg=prettier
"au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
"au FileType html setlocal formatprg=js-beautify\ --type\ html
"au FileType scss setlocal formatprg=prettier\ --parser\ css
"au FileType css setlocal formatprg=prettier\ --parser\ css


" ---------------------------------
" ------- PLUGIN SETTINGS  --------
" ---------------------------------

" ------ JEDI VIM -------
let g:jedi#completion_enabled = 0

" ------ RAINBOW BRACES  -------
let g:rainbow_active = 1
let g:rainbow_ctermfgs = ['Blue', 'Green', 'Yellow', 'LightRed', 'LightMagenta']
"let g:rainbow_ctermfgs = ['LightBlue', 'LightGreen', 'Yellow', 'LightRed', 'LightMagenta']
"let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow#max_level = 16
"let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]

" ------ DEVICONS -------
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_unite=1
let g:webdevicons_enable_airline_statusline=1

" ------ NERDTree ------
nmap t :NERDTreeToggle<CR>
nmap <silent> T :NERDTreeFind<cr>

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let NERDTreeIgnore = ['\.pyc$', '\.class$']

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------ AIRLINE -------

let g:airline_theme='edge'

let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline', 'denite' ]

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_min_count = 1

"" Configure error/warning section to use coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

let g:tsuquyomi_disable_default_mappings = 1
let g:airline_highlighting_cache = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



" --------- COC.VIM ----------
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

"" Use `[g` and `]g` to navigate diagnostics
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <C-space>  <Plug>(coc-fix-current)


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>p :<C-u>CocListResume<CR>
  



" --------- DENITE ----------
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nmap <leader>t :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>


" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-i>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-i>
  \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-i>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-i>
  \ denite#do_map('do_action', 'split')
endfunction

" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'statusline': 0,
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction
call s:profile(s:denite_options)

let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1

colorscheme edge

