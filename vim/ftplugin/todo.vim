let maplocalleader=","
setlocal nonumber
setlocal laststatus=0
setlocal showtabline=0

nnoremap <script> <silent> <buffer> <leader>s :%sort<CR>
vnoremap <script> <silent> <buffer> <leader>s :sort<CR>
nnoremap <script> <silent> <buffer> <leader>s@ :%call todo#txt#sort_by_context()<CR>
vnoremap <script> <silent> <buffer> <leader>s@ :call todo#txt#sort_by_context()<CR>
nnoremap <script> <silent> <buffer> <leader>s+ :%call todo#txt#sort_by_project()<CR>
vnoremap <script> <silent> <buffer> <leader>s+ :call todo#txt#sort_by_project()<CR>
nnoremap <script> <silent> <buffer> <leader>sd :%call todo#txt#sort_by_date()<CR>
vnoremap <script> <silent> <buffer> <leader>sd :call todo#txt#sort_by_date()<CR>

" Change priority {{{2
nnoremap <script> <silent> <buffer> <C-j> :call todo#txt#prioritize_increase()<CR>
vnoremap <script> <silent> <buffer> <C-j> :call todo#txt#prioritize_increase()<CR>
nnoremap <script> <silent> <buffer> <C-k> :call todo#txt#prioritize_decrease()<CR>
vnoremap <script> <silent> <buffer> <C-k> :call todo#txt#prioritize_decrease()<CR>
nnoremap <script> <silent> <buffer> a :call todo#txt#prioritize_add('A')<CR>
vnoremap <script> <silent> <buffer> a :call todo#txt#prioritize_add('A')<CR>
nnoremap <script> <silent> <buffer> b :call todo#txt#prioritize_add('B')<CR>
vnoremap <script> <silent> <buffer> b :call todo#txt#prioritize_add('B')<CR>
nnoremap <script> <silent> <buffer> c :call todo#txt#prioritize_add('C')<CR>
vnoremap <script> <silent> <buffer> c :call todo#txt#prioritize_add('C')<CR>

" Insert date {{{2
inoremap <script> <silent> <buffer> date<Tab> <C-R>=strftime("%Y-%m-%d")<CR>
nnoremap <script> <silent> <buffer> <C-d> :call todo#txt#replace_date()<CR>
vnoremap <script> <silent> <buffer> <C-d> :call todo#txt#replace_date()<CR>

" Mark done {{{2
nnoremap <script> <silent> <buffer> x :call todo#txt#mark_as_done()<CR>
vnoremap <script> <silent> <buffer> x :call todo#txt#mark_as_done()<CR>

" Mark all done {{{2
nnoremap <script> <silent> <buffer> X :call todo#txt#mark_all_as_done()<CR>

" Remove completed {{{2
nnoremap <script> <silent> <buffer> D :call todo#txt#remove_completed()<CR>
