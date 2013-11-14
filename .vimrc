" begin Vundle setup
set nocompatible
filetype off
set runtimepath+=$HOME/coding/vundle
call vundle#rc()

Bundle 'AutoTag'
Bundle 'Parameter-Text-Objects'
Bundle 'SuperTab-continued.'
Bundle 'Syntastic'
Bundle 'Tabular'
Bundle 'Tagbar'
Bundle 'The-NERD-tree'
Bundle 'abolish.vim'
Bundle 'ctrlp.vim'
Bundle 'endwise.vim'
Bundle 'fugitive.vim'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'koron/nyancat-vim'
Bundle 'matchit.zip'
Bundle 'slim-template/vim-slim'
Bundle 'surround.vim'
Bundle 'tComment'
Bundle 'textobj-rubyblock'
Bundle 'textobj-user'
Bundle 'unimpaired.vim'
Bundle 'vim-orgmode'
Bundle 'visSum.vim'

" end Vundle setup
filetype plugin indent on

" indenting
set autoindent shiftround smartindent

" tabs
set expandtab shiftwidth=2 tabstop=2

" search
set gdefault ignorecase incsearch nohlsearch smartcase

" rewrapping
set formatprg=lovely-rufus nojoinspaces

" options
set backspace=indent,eol,start
set laststatus=2

" GUI
colorscheme torte
let loaded_matchparen = 1
set guifont=Ubuntu\ Mono\ 14 guioptions-=m guioptions-=T
set list listchars=extends:»,nbsp:_,precedes:«,tab:▸\ ,trail:·
set nowrap
set showbreak=↪
set showcmd
set t_Co=256
syntax sync minlines=256

" tab-completion
set completeopt=menu,longest
set wildignorecase
set wildmode=list:longest

" misc
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let g:ctrlp_extensions = ['tag']
let g:ctrlp_working_path_mode = 0
let g:tagbar_autoclose = 1
set clipboard=unnamedplus
set directory=/tmp//
set hidden
set history=10000
set mouse=
set nrformats=hex
set splitbelow splitright
set ttyfast
set undodir=/tmp//
set undofile
set winwidth=81

" mappings
let mapleader = ','
nnoremap <c-h>      <c-w>h
nnoremap <c-j>      <c-w>j
nnoremap <c-k>      <c-w>k
nnoremap <c-l>      <c-w>l
nnoremap <s-down>   O<esc><down>
nnoremap <leader>b  :CtrlPBuffer<enter>
nnoremap <c-b>      :CtrlPBuffer<enter>
nnoremap <leader>f  :CtrlPTag<enter>
nnoremap <leader>g  :TagbarToggle<enter>
nnoremap <leader>n  :NERDTreeToggle<enter>
nnoremap <leader>p  gqip
nnoremap <leader>r  :silent! wall<enter>:!rake<enter>
nnoremap <leader>t= :Tab /=<enter>
nnoremap <space>    :
nnoremap j          gj
nnoremap k          gk
nnoremap U          :syntax sync fromstart<enter>:redraw!<enter>
nnoremap Y          Vy
vnoremap <leader>t= :Tab /=<enter>
vnoremap p          pgvy

" fake '|' as text object
nnoremap ca\| F\|c,
nnoremap ci\| T\|c,
nnoremap da\| F\|d,
nnoremap di\| T\|d,
nnoremap va\| F\|v,
nnoremap vi\| T\|v,
nnoremap ya\| F\|y,
nnoremap yi\| T\|y,

" fake '/' as text object
nnoremap ca/ F/c,
nnoremap ci/ T/c,
nnoremap da/ F/d,
nnoremap di/ T/d,
nnoremap va/ F/v,
nnoremap vi/ T/v,
nnoremap ya/ F/y,
nnoremap yi/ T/y,

" filetypes
autocmd BufRead,BufNewFile *.install         set filetype=php
autocmd BufRead,BufNewFile *.md              set filetype=markdown
autocmd BufRead,BufNewFile *.module          set filetype=php
autocmd BufRead,BufNewFile *.rsb             set filetype=ruby
autocmd BufRead,BufNewFile *.ru              set filetype=ruby
autocmd BufRead,BufNewFile {Gem,Vagrant}file set filetype=ruby
autocmd BufRead,BufNewFile parade            set filetype=ruby

" help in vertical split
autocmd FileType help wincmd L

" autosave and return to normal mode
autocmd FocusLost * :silent! wall
autocmd FocusLost * call feedkeys("\<C-\>\<C-n>")

" autoremove Fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

autocmd FileType json setlocal equalprg=python\ -m\ json.tool

" mark 80 and 120+ columns
highlight ColorColumn ctermbg=235 guibg=#222222
let &colorcolumn="80,".join(range(120,999),",")

function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
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
nnoremap <leader>. :call OpenTestAlternate()<cr>
nnoremap <leader>o <c-w>o <c-w>v <c-w>w :call OpenTestAlternate()<cr>

function! PromoteToLet()
  :normal! dd
  :normal! P
  :.s/\(\w\+\) \+= \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
noremap <leader>let :PromoteToLet<enter>
