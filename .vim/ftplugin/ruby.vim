if !exists("*AlternateForCurrentFile")
  function! AlternateForCurrentFile()
    let current_file = expand("%")
    let new_file = current_file
    let in_spec = match(current_file, '^spec/') != -1
    let going_to_spec = !in_spec
    let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
    if going_to_spec
      if in_app
        let new_file = substitute(new_file, '^app/', '', '')
      end
      let new_file = substitute(new_file, '^lib/', '', '')
      let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
      let new_file = 'spec/' . new_file
    else
      let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
      let new_file = substitute(new_file, '^spec/', '', '')
      let new_file = substitute(new_file, '^', 'lib/', '')
      if in_app
        let new_file = 'app/' . new_file
      end
    endif
    return new_file
  endfunction
endif

if !exists("*OpenTestAlternate")
  function! OpenTestAlternate()
    let new_file = AlternateForCurrentFile()
    exec ':e ' . new_file
  endfunction
endif

if !exists("*PromoteToLet")
  function! PromoteToLet()
    :normal! dd
    :normal! P
    :.s/\(\w\+\) \+= \(.*\)$/let(:\1) { \2 }/
    :normal ==
  endfunction
endif

:command! PromoteToLet :call PromoteToLet()
noremap  <leader>let :PromoteToLet<enter>
nnoremap <leader>.   :call OpenTestAlternate()<cr>
nnoremap <leader>o   <c-w>o <c-w>v <c-w>w :call OpenTestAlternate()<cr>
