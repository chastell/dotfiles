if &shell =~# 'fish$'
	set shell=sh
endif

let plug_path = stdpath('data') . '/site/autoload/plug.vim'
if empty(glob(plug_path))
	silent execute '!curl --create-dirs --fail --location '
		\ . '--output ' . plug_path
		\ . ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'bogado/file-line'
	Plug 'craigemery/vim-autotag'
	Plug 'dag/vim-fish'
	Plug 'ervandew/supertab'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'preservim/nerdtree'
	Plug 'rstacruz/vim-closer'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-endwise'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
call plug#end()

let NERDTreeQuitOnOpen = 1
let mapleader          = ' '

nnoremap <c-h>       <c-w>h
nnoremap <c-j>       <c-w>j
nnoremap <c-k>       <c-w>k
nnoremap <c-l>       <c-w>l
nnoremap <enter>     :wall<enter>
nnoremap <leader>b   :Buffers<enter>
nnoremap <leader>f   :FZF<enter>
nnoremap <leader>g   :silent lgrep<space>
nnoremap <leader>n   :NERDTreeToggle<enter>
nnoremap <s-down>    O<esc><down>
nnoremap <silent> [f :lprevious<enter>
nnoremap <silent> ]f :lnext<enter>
nnoremap <space>     :
nnoremap Y           Vy
nnoremap j           gj
nnoremap k           gk
vnoremap p           pgvy

set breakindent
set clipboard+=unnamedplus
set completeopt=menu,longest
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set ignorecase
set linebreak
set list
set listchars=extends:»,nbsp:_,precedes:«,tab:▸\ ,trail:·
set nohlsearch
set shiftwidth=2
set showbreak=↪
set showmatch
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=2
set undodir=/tmp//
set undofile
set wildignorecase
set wildmode=list:longest
