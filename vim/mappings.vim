let mapleader="\<Space>"
" force vp to not replace buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction

nnoremap \| :NERDTreeToggle<CR>

"MAPPINGS move lines of text up and down {{{
nnoremap <C-k> dd:normal! k<cr>:put!<cr>
nnoremap <C-j> ddp
vnoremap <C-k> X<Up>P`[v`]
vnoremap <C-j> X<Down>P`[v`]
"}}}
inoremap jk <Esc>

nnoremap <silent> <leader>h :Dash<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

vnoremap " :<c-u>normal! `><cr>a"<Esc>:<c-u>normal! `<<cr>i"<Esc>el
vnoremap ' :<c-u>normal! `><cr>a'<Esc>:<c-u>normal! `<<cr>i'<Esc>el
vnoremap ( :<c-u>normal! `><cr>a)<Esc>:<c-u>normal! `<<cr>i(<Esc>el
vnoremap [ :<c-u>normal! `><cr>a]<Esc>:<c-u>normal! `<<cr>i[<Esc>el
vnoremap { :<c-u>normal! `><cr>a}<Esc>:<c-u>normal! `<<cr>i{<Esc>el
vnoremap ` :<c-u>normal! `><cr>a`<Esc>:<c-u>normal! `<<cr>i`<Esc>el
vnoremap <Space> :<c-u>normal! `><cr>a <Esc>:<c-u>normal! `<<cr>i <Esc>el

inoremap <Esc>   <nop>
nnoremap <Up>    2<C-w>+
nnoremap <Down>  2<C-w>-
nnoremap <Left>  2<C-w><
nnoremap <Right> 2<C-w>>

nnoremap { :tabprev<cr>
nnoremap <C-t> :tabnew<cr>
nnoremap } :tabnext<cr>

nnoremap H ^
nnoremap L $
onoremap H ^
onoremap L $
vnoremap H ^
vnoremap L $

onoremap il( :<c-u>normal! f(vi(<cr>
onoremap ih( :<c-u>normal! F(vi(<cr>

onoremap il[ :<c-u>normal! f[vi[<cr>
onoremap ih[ :<c-u>normal! F[vi[<cr>

onoremap il{ :<c-u>normal! f{vi{<cr>
onoremap ih{ :<c-u>normal! F{vi{<cr>

onoremap il" :<c-u>normal! f"vi"<cr>
onoremap ih" :<c-u>normal! F"vi"<cr>

onoremap il' :<c-u>normal! f'vi'<cr>
onoremap ih' :<c-u>normal! F'vi'<cr>

nnoremap <C-l> e
nnoremap <C-h> b
vnoremap <C-l> e
vnoremap <C-h> b
onoremap <C-l> e
onoremap <C-h> b

nnoremap <C-d> *

nnoremap E ea
nnoremap B bi
nnoremap W wi

nnoremap <silent><leader><leader> :nohl<CR>

nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" copy and paste into system clipboard
vnoremap <leader>y "+y
vnoremap <leader>d "+d
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

nnoremap <leader>ga :Gwrite<CR>:e<CR>
nnoremap <leader>v :vs<CR>

nnoremap <leader>s :sp<CR>
nnoremap <leader>e :e<CR>

nmap tm <Plug>SetTmuxVars

vmap <silent> <expr> p <sid>Repl()
noremap gv `[v`]`

" Easily swap background color
nnoremap <leader>1 :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
