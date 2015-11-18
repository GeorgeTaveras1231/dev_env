if !empty($TMUX)
  let g:rspec_command = "call Send_to_Tmux('rspec {spec}\n')"
endif

nnoremap <buffer> <Leader>r :call RunCurrentSpecFile()<CR>
nnoremap <buffer> <Leader>s :call RunNearestSpec()<CR>
nnoremap <buffer> <Leader>l :call RunLastSpec()<CR>
nnoremap <buffer> <Leader>a :call RunAllSpecs()<CR>

set foldmethod=syntax
