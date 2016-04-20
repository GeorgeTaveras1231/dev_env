if !empty($TMUX)
  " Run test in current file
  nnoremap <leader>t :call Send_to_Tmux("mix test " . expand("%") . "\n")<CR>

  " Run test in current file:line
  nnoremap <leader>s :call Send_to_Tmux("mix test " . expand("%") . ":" . line(".") . "\n")<CR>

  " Run all tests
  nnoremap <leader>a :call Send_to_Tmux("mix test\n")<CR>

  " Get dependencies
  nnoremap <leader>d :call Send_to_Tmux("mix deps.get\n")<CR>

  " Build escript
  nnoremap <leader>b :call Send_to_Tmux("mix escript.build\n")<CR>

  " Execute current file
  nnoremap <leader>r :call Send_to_Tmux("mix run " . expand("%") . "\n")<CR>
endif

inoremap pry require IEx<Enter>IEx.pry
