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
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf'                  " onehalfdark onehalflight
Plug 'NLKNguyen/papercolor-theme'     " papercolor
Plug 'jnurmine/Zenburn'               " zenburn
Plug 'chriskempson/base16-vim'        " let base16colorspace=256  
Plug 'jacoborus/tender.vim'           " tender
Plug 'gosukiwi/vim-atom-dark'         " vim-atom-dark
Plug 'kyoz/purify', { 'rtp': 'vim' }  " purify


Plug 'lewis6991/moonlight.vim'
Plug 'sainnhe/sonokai'
Plug 'wadackel/vim-dogrun'
Plug 'megantiu/true.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'gryf/wombat256grf'
Plug 'franbach/miramare'

Plug 'dunstontc/vim-vscode-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'embark-theme/vim', { 'as': 'embark' }




" --------- FUNCTIONAL ----------
Plug 'junegunn/vim-emoji'   
Plug 'junegunn/rainbow_parentheses.vim'


Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'

"Plug 'yuezk/vim-js'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'majutsushi/tagbar'
"Plug 'larsbs/vimterial_dark'
"Plug 'scrooloose/nerdcommenter'

"Plug 'herringtondarkholme/yats.vim'

"Plug 'mxw/vim-jsx'
"Plug 'pangloss/vim-javascript'

Plug 'eliba2/vim-node-inspect'  " NODE DEBUGGER

" --------- EDITOR ----------
"Plug 'tmhedberg/matchit'
"Plug 'tpope/vim-surround'
" Plug 'neoclide/coc-denite'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-neco'
Plug 'Shougo/neco-vim'
" Plug 'Shougo/denite.nvim', { 'do' : ':UpdateRemotePlugins' }
"Plug 'Yggdroot/indentLine'
"Plug 'ianks/vim-tsx'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'alvan/vim-closetag'
Plug 'ekalinin/dockerfile.vim'
Plug 'jparise/vim-graphql'        " GraphQL syntax

"Plug 'pangloss/vim-javascript'    " JavaScript support
"Plug 'leafgarland/typescript-vim' " TypeScript syntax
"Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

"Plug 'peitalin/vim-jsx-typescript'

"Plug 'davidhalter/jedi-vim'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1



" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}


" --------- FILE MANAGER ----------
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" --------- GIT PLUGINS ----------
Plug 'mhinz/vim-signify'                      " enable signcolumn
Plug 'tpope/vim-fugitive'

call plug#end()


let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 0

" --------- Reload CONFIG at save  ----------
nmap <leader>rr :source $MYVIMRC<cr> 
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC | AirlineRefresh
    autocmd BufWritePost $MYVIMRC AirlineRefresh
    autocmd BufWritePost $MYVIMRC redraw
    autocmd BufWritePost $MYVIMRC redrawstatus
augroup END " }

" ---------- SET FILE TYPES ----------
autocmd BufNewFile,BufRead *Dockerfile* set filetype=Dockerfile
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" ---------- SWITCH DARK/LIGHT MODES -------------
function ToggleMode()
  if (&background == 'light')
    set background=dark
    echo "lights off!"
  else 
    set background=light
    echo "lights on!"
  endif
endfunction

nnoremap <C-w>m  :call ToggleMode()<cr>


" ------- LOAD configs ----------
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/keybinds.vim



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



"---------------------------------
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


" ------ CLOSETAG SETTINGS  -------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.xml,*.tsx"


" ------ RAINBOW BRACES  -------

let g:rainbow_active = 1
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]



autocmd FileType * RainbowParentheses

"------ DEVICONS -------
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
" let g:webdevicons_enable_denite = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

"------- STARTIFY -------
let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]

let g:startify_bookmarks = [
          \ { 'i': '~/.config/nvim/init.vim' },
          \ { 's': '~/.config/nvim/coc-settings.json' },
          \ { 'c': '~/.config/nvim/coc.vim' },
          \ { 'f': '~/.config/nvim/fzf.vim' },
          \ ]


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

"let g:airline_theme='edge'
let g:true_airline = 1
let g:airline_theme='gruvbox'
"let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline', 'denite' ]
let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline'  ]
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


" ---------------------------------
" --------- COLORSCHEME -----------
" ---------------------------------

let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1

"colorscheme edge
"colorscheme gruvbox
let g:dracula_colorterm = 0
colorscheme dracula

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" cursoline hightlight color
:hi CursorLine  cterm=NONE  guibg=Black
