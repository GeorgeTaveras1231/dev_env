let b:javascript_fold=1
set colorcolumn=100

abbreviate funciton function

inoremap <buffer> -><Space> function () {}<Esc>i
nnoremap ; A;<Esc>
vnoremap ; :s/\(.\)$/\1;/g<CR>:nohl<CR>
