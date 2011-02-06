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
set guifont=Terminus\ 9 guioptions-=T
set list listchars=extends:→,precedes:←,nbsp:_,tab:»·,trail:·
set showcmd
set t_Co=256

" tab-completion
set wildmode=list:longest

" misc
set clipboard+=unnamed
set directory=/tmp
set hidden
set pastetoggle=<F11>
set ttyfast

filetype plugin indent on

" mappings
nnoremap <enter>    O<esc><down>
nmap     <leader>n  :NERDTreeToggle<enter>
nmap     <leader>r  gq}
nmap     <leader>s  :setlocal spell! spelllang=en_gb<enter>
nnoremap /          /\v
vnoremap /          /\v

" filetypes
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.md      set filetype=markdown
autocmd BufRead,BufNewFile *.module  set filetype=php
autocmd BufRead,BufNewFile *.ru      set filetype=ruby

" plugins
set runtimepath+=$HOME/coding/vundle
call vundle#rc()
Bundle 'Align'
Bundle 'Command-T'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'LustyExplorer'
Bundle 'LustyJuggler'
Bundle 'Markdown'
Bundle 'SuperTab-continued.'
Bundle 'The-NERD-tree'
Bundle 'bufexplorer.zip'
Bundle 'endwise.vim'
Bundle 'repeat.vim'
Bundle 'surround.vim'
Bundle 'taglist.vim'
Bundle 'vcscommand.vim'
