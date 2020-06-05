call plug#begin('~/.local/share/nvim/plugged')

" --------- FONTS ----------
"Plug 'ryanoasis/nerd-fonts'
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
Plug 'morhetz/gruvbox'


" --------- FUNCTIONAL ----------
"Plug 'oblitum/rainbow'                      " Rainbow braces
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-startify'
Plug 'larsbs/vimterial_dark'
"Plug 'scrooloose/nerdcommenter'


"Plug 'mxw/vim-jsx'
"Plug 'pangloss/vim-javascript'

Plug 'eliba2/vim-node-inspect' 
" --------- EDITOR ----------
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'
Plug 'neoclide/coc-neco'
Plug 'Shougo/denite.nvim', { 'do' : ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim'
Plug 'Yggdroot/indentLine'
Plug 'ekalinin/dockerfile.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

Plug 'alvan/vim-closetag'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1



Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}


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


" ---------- SET DOCKERFILE FILE TYPE ----------
autocmd BufRead *Dockerfile* setfiletype Dockerfile

" ------------------------------
" --------- KEYBINDS  ----------
" ------------------------------


nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>n :noh<cr>
nmap <leader>s :windo set scrollbind
nmap <leader>S :windo set scrollbind!
nmap <leader>c :b#<bar>bd#<CR>
"nmap <leader>c :bd<cr>
"nmap <leader>e :Explore<cr>
"nnoremap <leader>a ggVG

cmap w!! w !sudo tee %

nmap <silent> <C-n> :bn<cr>
nmap <silent> <C-p> :bp<cr>
no <right> :bn<cr>
no <left> :bp<cr>

no <down> ddp
no <up> ddkP

imap jj <ESC>
"imap <C-j> <ESC>j
"imap <C-k> <ESC>k
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

nnoremap <leader>d "_d
nnoremap x "_x

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
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz

"autoclose 2 lines below and position cursor in the middle 
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O
"autoclose 2 lines below adding ; and position cursor in the middle 
inoremap (;<CR> (<CR>);<ESC>O
inoremap [;<CR> [<CR>];<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"autoclose 2 lines below adding , and position cursor in the middle 
inoremap (,<CR> (<CR>),<ESC>O
inoremap [,<CR> [<CR>],<ESC>O
inoremap {,<CR> {<CR>},<ESC>O

vmap <Tab> >gv
vmap <S-Tab> <gv
vmap } }zz
vmap { {zz
vmap j jzz
vmap k kzz
vmap h hzz
vmap l lzz

"vmap <C-/> <plug>NERDCommenterToggle
"nmap <C-/> <plug>NERDCommenterToggle

" ECLIM keypams
"nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
"nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
"nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

" 
" VIM-JAVASCRIPT pluging
"

set conceallevel=1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"

" ---------------------------------
" ------- NEOVIM SETTINGS  --------
" ---------------------------------

" Customize NERDTree directory
hi! NERDTreeCWD guifg=#99c794

" Make background color transparent for git changes
"hi! SignifySignAdd guibg=NONE
"hi! SignifySignDelete guibg=NONE
"hi! SignifySignChange guibg=NONE

" Highlight git change signs
hi! SignifySignAdd guifg=#99c794
hi! SignifySignDelete guifg=#ec5f67
hi! SignifySignChange guifg=#c594c5


" ---------------------------------
" ------- PLUGIN SETTINGS  --------
" ---------------------------------

let g:indentLine_enabled=0
"let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', ' ']
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" ---------------------------------
" ---------  ULTISNIPS  -----------
" ---------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" ---------------------------------
" ---------  NEOSNIP   -----------
" ---------------------------------
"let g:neosnippet#disable_runtime_snippets

" ---------------------------------
" ------ CLOSETAG SETTINGS  -------
" ---------------------------------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.xml"


" ------ RAINBOW BRACES  -------
"let g:rainbow_active = 1
"let g:rainbow_ctermfgs = ['Blue', 'Green', 'Yellow', 'LightRed', 'LightMagenta']
"let g:rainbow_ctermfgs = ['LightBlue', 'LightGreen', 'Yellow', 'LightRed', 'LightMagenta']
"let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow#max_level = 16
"let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]
"autocmd BufEnter * :RainbowParentheses<CR>

" ------ DEVICONS -------
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_unite=1
let g:webdevicons_enable_airline_statusline=1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_denite = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

" ------ NERDTree ------
nmap t :NERDTreeToggle<CR>
nmap <silent> T :NERDTreeFind<cr>

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeIgnore = ['\.pyc$', '\.class$'] 


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------ AIRLINE -------

let g:airline_theme='edge'
let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline', 'denite' ]
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#formatter = 'jsformatter'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_min_count = 1

let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

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

let g:coc_global_extensions = [
  \ 'coc-marketplace',
  \ 'coc-highlight',
  \ 'coc-pairs',
  \ 'coc-git',
  \ 'coc-lines',
  \ 'coc-lists',
  \ 'coc-yank',
  \ 'coc-dictionary',
  \ 'coc-tag',
  \ 'coc-word',
  \ 'coc-emoji',
  \ 'coc-snippets',
  \ 'coc-ultisnips',
  \ 'coc-neosnippet',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-tslint-plugin',
  \ 'coc-eslint',
  \ 'coc-emmet',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-css', 
  \ 'coc-html',
  \ 'coc-go',
  \ 'coc-xml',
  \ 'coc-markdownlint',
  \ 'coc-python',
  \ 'coc-java' 
  \]

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use <c-space> to trigger completion.
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" Use `[g` and `]g` to navigate diagnostics
" Use K to show documentation in preview window
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
"inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gj <Plug>(coc-implementation)

nmap <silent> <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of current line
" Fix autofix problem of current line
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <C-space>  <Plug>(coc-fix-current)


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,javascript,javascriptreact setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end



" Use `:Format` to format current buffer
" Use `:Fold` to fold current buffer
" use `:OR` for organize import of current buffer
command! -nargs=0 Format  :call CocAction('format')
command! -nargs=? Fold    :call CocAction('fold', <f-args>)
command! -nargs=0 OR      :call CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=0 Format :CocCommand prettier.formatFile

"autocmd! InsertLeave * Format
"autocmd! bufwritepost * Format
nnoremap <C-f> :Format<cr>
"autocmd bufwritepost init.vim source $MYVIMRC | AirlineRefresh

" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}



" Using CocList
"     <leader>d      : Show all diagnostics
"     <leader>e     : Manage extensions
"     <leader>m     : Show commands
"     <leader>o     : Find symbol of current document
"     <leader>s     : Search workspace symbols
"     <leader>j     : Do default action for next item.
"     <leader>k     : Do default action for previous item.
"     <leader>p     : Resume latest coc list
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>e :<C-u>CocList extensions<cr>
nnoremap <silent> <leader>m :<C-u>CocList commands<cr>
nnoremap <silent> <leader>o :<C-u>CocList outline<cr>
nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>j :<C-u>CocNext<CR>
nnoremap <silent> <leader>k :<C-u>CocPrev<CR>
nnoremap <silent> <leader>p :<C-u>CocListResume<CR>


" --------- COC-SNIPPETS ----------
" Use <C-l> for trigger snippet expand.
imap <C-s> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<Tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<S-Tab>'

" Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" --------- DENITE ----------
"   ;         - Browser currently open buffers
"   <leader>f - Browse list of files in current directory
"   <leader>j - Search current directory for occurences of word under cursor
"   <leader>g - Search current directory for occurences of 
"               given term and close window if no results
nmap <leader>f :Denite buffer<CR>
nmap <leader>p :DeniteProjectDir file/rec buffer<CR>
"nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>
"nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>


call denite#custom#map('insert', '<M-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<M-k>', '<denite:move_to_previous_line>', 'noremap')
    " easier than n/p

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
  inoremap <silent><buffer> <M-k> <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
  inoremap <silent><buffer> <M-j> <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
endfunction


" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--hidden', '--glob', '!.git'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])
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
    \ 'direction': 'rightbelow',
    \ 'source_names': 'short',
    \ 'prompt': 'λ ',
    \ 'statusline': 1,
    \ 'highlight_matched_char': 'QuickFixLine',
    \ 'highlight_matched_range': 'Visual',
    \ 'highlight_window_background': 'Visual',
    \ 'highlight_filter_background': 'DiffAdd',
    \ 'winrow': 1,
    \ 'expand': 1,
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



" ---------------------------------
" --------- COLORSCHEME -----------
" ---------------------------------

let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1

colorscheme edge

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" cursoline hightlight color
:hi CursorLine  cterm=NONE  guibg=Black
