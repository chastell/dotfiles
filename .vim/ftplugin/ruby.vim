" switch to Ruby 1.9+ Hash syntax
command! -bar -range=% NotRocket execute '<line1>,<line2>s/:\(\w\+[?!]\?\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')
