" begin Vundle setup
set nocompatible
filetype off
set runtimepath+=$HOME/coding/vundle
call vundle#rc()

Bundle 'AutoTag'
Bundle 'EasyMotion'
Bundle 'LustyExplorer'
Bundle 'Markdown'
Bundle 'Parameter-Text-Objects'
Bundle 'Rubytest.vim'
Bundle 'SuperTab-continued.'
Bundle 'Tagbar'
Bundle 'The-NERD-tree'
Bundle 'ctrlp.vim'
Bundle 'endwise.vim'
Bundle 'fugitive.vim'
Bundle 'matchit.zip'
Bundle 'rails.vim'
Bundle 'surround.vim'
Bundle 'tComment'
Bundle 'textobj-rubyblock'
Bundle 'textobj-user'
Bundle 'unimpaired.vim'

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

" GUI
colorscheme torte
let loaded_matchparen = 1
set guifont=Ubuntu\ Mono\ 11 guioptions-=m guioptions-=T
set list listchars=extends:»,nbsp:_,precedes:«,tab:▸\ ,trail:·
set nowrap
set scrolloff=7 sidescroll=1 sidescrolloff=10
set showbreak=↪
set showcmd
set t_Co=256

" tab-completion
set completeopt=menu,longest
set wildmode=list:longest

" misc
let NERDTreeQuitOnOpen = 1
let g:ctrlp_working_path_mode = 0
let g:rubytest_cmd_example = "ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "ruby %p"
let g:tagbar_autoclose = 1
set clipboard=unnamedplus
set directory=/tmp//
set grepprg=ack-grep
set hidden
set history=1000
set mouse=
set nrformats=hex
set splitbelow splitright
set ttyfast
set undodir=/tmp//
set undofile

" mappings
let mapleader = ','
nnoremap <c-h>      <c-w>h
nnoremap <c-j>      <c-w>j
nnoremap <c-k>      <c-w>k
nnoremap <c-l>      <c-w>l
nnoremap <c-m>      :cp<enter>
nnoremap <c-n>      :cn<enter>
nnoremap <s-down>   O<esc><down>
nnoremap <leader>b  :LustyBufferExplorer<enter>
nnoremap <leader>f  :LustyFilesystemExplorer<enter>
nnoremap <leader>g  :TagbarToggle<enter>
nnoremap <leader>n  :NERDTreeToggle<enter>
nnoremap <leader>p  gqip
nnoremap <leader>r  :silent! wall<enter>:!rake<enter>
nnoremap <space>    :
nnoremap j          gj
nnoremap k          gk
nnoremap Y          Vy

" filetypes
autocmd BufRead,BufNewFile *.install         set filetype=php
autocmd BufRead,BufNewFile *.md              set filetype=markdown
autocmd BufRead,BufNewFile *.module          set filetype=php
autocmd BufRead,BufNewFile *.rsb             set filetype=ruby
autocmd BufRead,BufNewFile *.ru              set filetype=ruby
autocmd BufRead,BufNewFile {Gem,Vagrant}file set filetype=ruby

" help in vertical split
autocmd FileType help wincmd L

" autosave and return to normal mode
autocmd FocusLost * :silent! wall
autocmd FocusLost * call feedkeys("\<C-\>\<C-n>")

" autoremove Fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete
