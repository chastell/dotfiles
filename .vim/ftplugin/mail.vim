setlocal formatoptions+=1
setlocal formatprg=lovely-rufus\ --width=50
setlocal noautoindent nosmartindent

map <leader>fa  ggCFrom: Piotr Szotkowski <piotr@analyticsfire.com><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>ff  ggCFrom: Piotr Szotkowski <chastell@chastell.net><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fp  ggCFrom: Piotr Szotkowski <p.szotkowski@tele.pw.edu.pl><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fr  ggCFrom: Piotr Szotkowski <piotr.szotkowski@rebased.pl><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fw  ggCFrom: Wojtek Szotkowski <chastell@chastell.net><esc>G?^-- $<enter><up>C— Wojtek<esc>

" sig randomiser: e/p → (non-)Polish, l/t → (non-)technical
map <leader>se  G?^-- $<enter><down>dG:r! signore prego ~pl ~Staszic<enter>
map <leader>sle G?^-- $<enter><down>dG:r! signore prego ~pl ~tech ~Staszic<enter>
map <leader>sll G?^-- $<enter><down>dG:r! signore prego ~tech ~Staszic<enter>
map <leader>slp G?^-- $<enter><down>dG:r! signore prego pl ~tech ~Staszic<enter>
map <leader>sp  G?^-- $<enter><down>dG:r! signore prego pl ~Staszic<enter>
map <leader>ss  G?^-- $<enter><down>dG:r! signore prego ~Staszic<enter>
map <leader>ste G?^-- $<enter><down>dG:r! signore prego ~pl tech<enter>
map <leader>stp G?^-- $<enter><down>dG:r! signore prego pl tech<enter>
map <leader>stt G?^-- $<enter><down>dG:r! signore prego tech<enter>
