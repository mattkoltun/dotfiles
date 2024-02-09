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
imap <M-l> <ESC>
imap <M-j> <ESC>j
imap <M-k> <ESC>k
inoremap <C-l> <ESC>A
"imap <C-space> <ESC>
"vmap <C-space> <ESC>

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

"nnoremap <leader>d "_d
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


vmap <Tab> >gv
vmap <S-Tab> <gv
vmap } }zz
vmap { {zz
vmap j jzz
vmap k kzz
vmap h hzz
vmap l lzz
