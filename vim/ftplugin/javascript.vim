let b:javascript_fold=1
set foldmethod=syntax
set colorcolumn=100

abbreviate funciton function

inoremap <buffer> -><Space> function () {}<Esc>i
inoremap <buffer> >><Space> () => {}<Esc>i

nnoremap <buffer> ; A;<Esc>
vnoremap <buffer> ; :s/\(.\)$/\1;/g<CR>:nohl<CR>

