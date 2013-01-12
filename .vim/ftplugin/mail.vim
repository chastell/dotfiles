setlocal formatoptions+=1
setlocal noautoindent nosmartindent

map <leader>fc  ggCFrom: Piotr Szotkowski <chastell@civicrm.org><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>ff  ggCFrom: Piotr Szotkowski <chastell@chastell.net><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fg  ggCFrom: Piotr Szotkowski <piotr@ginzametrics.com><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fp  ggCFrom: Piotr Szotkowski <p.szotkowski@tele.pw.edu.pl><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fr  ggCFrom: Piotr Szotkowski <piotr.szotkowski@rebased.pl><esc>G?^-- $<enter><up>C— Piotr Szotkowski<esc>
map <leader>fw  ggCFrom: Wojtek Szotkowski <chastell@chastell.net><esc>G?^-- $<enter><up>C— Wojtek<esc>

" sig randomiser: e/p → (non-)Polish, l/t → (non-)technical
map <leader>se  G?^-- $<enter><down>dG:r! signore prego ~pl ~Staszic<enter>Go<enter><enter><esc>
map <leader>sle G?^-- $<enter><down>dG:r! signore prego ~pl ~tech ~Staszic<enter>Go<enter><enter><esc>
map <leader>sll G?^-- $<enter><down>dG:r! signore prego ~tech ~Staszic<enter>Go<enter><enter><esc>
map <leader>slp G?^-- $<enter><down>dG:r! signore prego pl ~tech ~Staszic<enter>Go<enter><enter><esc>
map <leader>sp  G?^-- $<enter><down>dG:r! signore prego pl ~Staszic<enter>Go<enter><enter><esc>
map <leader>ss  G?^-- $<enter><down>dG:r! signore prego ~Staszic<enter>Go<enter><enter><esc>
map <leader>ste G?^-- $<enter><down>dG:r! signore prego ~pl tech<enter>Go<enter><enter><esc>
map <leader>stp G?^-- $<enter><down>dG:r! signore prego pl tech<enter>Go<enter><enter><esc>
map <leader>stt G?^-- $<enter><down>dG:r! signore prego tech<enter>Go<enter><enter><esc>
