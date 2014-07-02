" Vundle
set nocompatible
filetype off
set runtimepath+=$HOME/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'craigemery/vim-autotag'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'henrik/git-grep-vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'kana/vim-textobj-user'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/matchit.zip'
call vundle#end()
filetype plugin indent on

let loaded_matchparen = 1

" autocmd
autocmd BufRead,BufNewFile *.md              set filetype=markdown
autocmd BufRead,BufNewFile *.rsb             set filetype=ruby
autocmd BufRead,BufNewFile *.ru              set filetype=ruby
autocmd BufRead,BufNewFile parade            set filetype=ruby
autocmd BufRead,BufNewFile {Gem,Vagrant}file set filetype=ruby
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd FileType help wincmd L
autocmd FileType json setlocal equalprg=python\ -m\ json.tool
autocmd FocusLost * :silent! wall
autocmd FocusLost * call feedkeys("\<C-\>\<C-n>")

" gui
set clipboard=unnamedplus

" map
let mapleader = ' '
nnoremap <c-h>      <c-w>h
nnoremap <c-j>      <c-w>j
nnoremap <c-k>      <c-w>k
nnoremap <c-l>      <c-w>l
nnoremap <leader>b  :CtrlPBuffer<enter>
nnoremap <leader>f  :CtrlPTag<enter>
nnoremap <leader>g  :TagbarToggle<enter>
nnoremap <leader>n  :NERDTreeToggle<enter>
nnoremap <leader>p  gqip
nnoremap <leader>r  :silent! wall<enter>:!rake<enter>
nnoremap <leader>t= :Tab /=<enter>
nnoremap <s-down>   O<esc><down>
nnoremap <space>    :
nnoremap U          :syntax sync fromstart<enter>:redraw!<enter>
nnoremap Y          Vy
nnoremap j          gj
nnoremap k          gk
vnoremap <leader>t= :Tab /=<enter>
vnoremap p          pgvy

" options
set autoindent
set backspace=indent,eol,start
set completeopt=menu,longest
set directory=/tmp//
set expandtab
set formatprg=lovely-rufus
set gdefault
set grepprg=ag\ --nocolor\ --nogroup
set guifont=Ubuntu\ Mono\ 16
set guioptions-=T
set hidden
set history=10000
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=extends:»,nbsp:_,precedes:«,tab:▸\ ,trail:·
set mouse=
set nohlsearch
set nojoinspaces
set nowrap
set nrformats=hex
set shiftround
set shiftwidth=2
set showbreak=↪
set showcmd
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=2
set ttyfast
set undodir=/tmp//
set undofile
set wildignorecase
set wildmode=list:longest
set winwidth=80

" term
set t_Co=256

" various
set shell=$SHELL

" syntax
colorscheme torte
highlight ColorColumn ctermbg=235 guibg=#222222
let &colorcolumn="80,".join(range(120,999),",")
syntax sync minlines=256

" ctrlp
let g:ctrlp_extensions        = ['tag']
let g:ctrlp_use_caching       = 0
let g:ctrlp_user_command      = 'ag %s -l --nocolor -g ""'
let g:ctrlp_working_path_mode = 0

" nerdtree
let NERDTreeQuitOnOpen = 1

" tagbar
let g:tagbar_autoclose = 1

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
