runtime! defaults.vim

call plug#begin('~/.vim/plugged')
Plug 'DataWraith/auto_mkdir'
Plug 'bogado/file-line'
Plug 'cespare/vim-toml'
Plug 'craigemery/vim-autotag'
Plug 'dag/vim-fish'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'kana/vim-textobj-user'
Plug 'mudge/runspec.vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ngmy/vim-rubocop'
Plug 'rstacruz/vim-closer'
Plug 'scrooloose/nerdtree'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
call plug#end()

" autocmd
augroup configgroup
  autocmd!
  autocmd BufRead,BufNewFile *     let &colorcolumn="80"
  autocmd BufReadPost fugitive://* set bufhidden=delete
  autocmd BufWritePost $MYVIMRC    source $MYVIMRC
  autocmd FileType help            wincmd L
  autocmd FileType json            setlocal equalprg=python\ -m\ json.tool
augroup END

let g:markdown_fenced_languages = ['css', 'erb=eruby', 'html', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']

" gui
set clipboard=unnamedplus

" map
let mapleader = ' '
nnoremap <c-h>       <c-w>h
nnoremap <c-j>       <c-w>j
nnoremap <c-k>       <c-w>k
nnoremap <c-l>       <c-w>l
nnoremap <enter>     :wall<enter>
nnoremap <leader>b   :Buffers<enter>
nnoremap <leader>f   :FZF<enter>
nnoremap <leader>g   :silent lgrep<space>
nnoremap <leader>n   :NERDTreeToggle<enter>
nnoremap <leader>p   gqip
nnoremap <s-down>    O<esc><down>
nnoremap <space>     :
nnoremap <silent> [f :lprevious<enter>
nnoremap <silent> ]f :lnext<enter>
nnoremap U           :syntax sync fromstart<enter>:redraw!<enter>
nnoremap Y           Vy
nnoremap j           gj
nnoremap k           gk
vnoremap p           pgvy

" options
set autoindent
set breakindent
set completeopt=menu,longest
set expandtab
set formatprg=lovely-rufus
set gdefault
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set guifont=Ubuntu\ Mono\ 16
set guioptions-=T
set hidden
set history=10000
set ignorecase
set laststatus=2
set lazyredraw
set linebreak
set list
set listchars=extends:»,nbsp:_,precedes:«,tab:▸\ ,trail:·
set mouse=
set nojoinspaces
set shiftround
set shiftwidth=2
set showbreak=↪
set showmatch
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=2
set undofile
set wildignorecase
set wildmode=list:longest
set winwidth=80

" syntax
highlight ColorColumn            ctermbg=233 guibg=#111111
highlight CursorLine  cterm=none ctermbg=233 guibg=#111111
set colorcolumn=80
set cursorline
syntax sync fromstart

" nerdtree
let NERDTreeQuitOnOpen = 1

" better undo in long streams of text
inoremap . .<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u
inoremap , ,<c-g>u

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
