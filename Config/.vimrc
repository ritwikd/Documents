inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
      return "\<Right>"
       else
            return a:char
             endif
             endf
             
             function CloseBracket()
              if match(getline(line('.') + 1), '\s*}') < 0
                   return "\<CR>}"
                    else
                         return "\<Esc>j0f}a"
                          endif
                          endf
                          
                          function QuoteDelim(char)
                           let line = getline('.')
                            let col = col('.')
                             if line[col - 2] == "\\"
                                  "Inserting a quoted quotation mark into the string
                                   return a:char
                                    elseif line[col - 1] == a:char
                                     "Escaping out of the string
                                      return "\<Right>"
                                       else
                                            "Starting a string
                                             return a:char.a:char."\<Esc>i"
                                              endif
                                              endf}}
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme molokai
set cul                                         
hi CursorLine term=none cterm=none ctermbg=238
syntax on
nore ; :
nore , ;
set nu! 
set nobackup
iab AlP ABCDEFGHIJKLMNOPQRSTUVWXYZ
iab MoN January February March April May June July August September October November December
iab MoO Jan Feb Mar Apr May Jun Jul Aug Sep Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
iab NuM 12345678901234567890123456789012345678901234567890123456789012345678901234567890 
iab RuL ----+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8----+----9----+----0
set nobackup 
set nocp
set tabstop=4
set shiftwidth=4
set et
set ignorecase
set ai
set ruler
set showcmd
set incsearch
syn on
set dict=/usr/dict/words
set spell
ab mispell misspell
ab funciton function
ab functiton function
ab fucntion function
ab funtion function
ab erturn return
ab retunr return
ab reutrn return
ab reutn return
ab queyr query
ab htis this
ab foreahc foreach
ab forech foreach
iabbr sout System.out.println("");(;)
ab pf printf(
nmap <F4> :SCCompile<cr>
nmap <F5> :SCCompileRun<cr>
filetype plugin on
set incsearch
