" begin Vundle setup
set nocompatible
filetype off
set runtimepath+=$HOME/coding/vundle
call vundle#rc()

Bundle 'LustyExplorer'
Bundle 'Markdown'
Bundle 'Parameter-Text-Objects'
Bundle 'SuperTab-continued.'
Bundle 'Tagbar'
Bundle 'The-NERD-tree'
Bundle 'endwise.vim'
Bundle 'fugitive.vim'
Bundle 'surround.vim'
Bundle 'unimpaired.vim'

" end Vundle setup
filetype plugin indent on

" indenting
set autoindent smartindent

" tabs
set expandtab shiftwidth=2 tabstop=2

" search
set gdefault ignorecase incsearch nohlsearch smartcase

" rewrapping
set formatprg=lovely-rufus nojoinspaces

" GUI
colorscheme torte
let loaded_matchparen = 1
set guifont=Terminus\ 9 guioptions-=m guioptions-=T
set lazyredraw
set list listchars=extends:→,precedes:←,nbsp:_,tab:»\ ,trail:·
set scrolloff=7
set showcmd
set t_Co=256

" tab-completion
set wildmode=list:longest

" misc
set clipboard+=unnamed
set directory=/tmp
set hidden
set history=1000
set nrformats=hex
set pastetoggle=<F11>
set splitbelow splitright
set ttyfast

" mappings
let mapleader = ','
inoremap ((         ()<left>
inoremap {{         {}<left>
nnoremap <c-l>      :nohls<enter><c-l>
nnoremap <s-down>   O<esc><down>
nnoremap <leader>n  :NERDTreeToggle<enter>
nnoremap <leader>rr gq}
nnoremap <leader>s  :setlocal spell! spelllang=en_gb<enter>

" filetypes
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.md      set filetype=markdown
autocmd BufRead,BufNewFile *.module  set filetype=php
autocmd BufRead,BufNewFile *.ru      set filetype=ruby
autocmd BufRead,BufNewFile Gemfile   set filetype=ruby
