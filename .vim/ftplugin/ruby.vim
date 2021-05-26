nnoremap <enter>   :wall<enter>:!lhdc run datalake_populator rspec %<enter>
nnoremap <leader>. <Plug>RunSpecToggle
nnoremap <leader>o <c-w>o <c-w>v <c-w>w :execute "normal \<Plug>RunSpecToggle"<enter>
nnoremap <leader>t :wall<enter>:!lhdc run datalake_populator rspec<enter>
