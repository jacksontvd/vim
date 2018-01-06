" Vimball Archiver by Charles E. Campbell, Jr., Ph.D.
UseVimball
finish
colors/astronaut.vim	[[[1
99
" astronaut.vim: a new colorscheme by cecampbe
" Written By: Charles E. Campbell's ftplugin/hicolors.vim
" Date: Wed 22 Jan 2014 01:50:26 PM EST
" Version: v20	ASTRO-ONLY

" ---------------------------------------------------------------------
" Standard Initialization:
set bg=dark
hi clear
if exists( "syntax_on")
 syntax reset
endif
let g:colors_name      = "astronaut"
let g:loaded_astronaut = "v20"

" ---------------------------------------------------------------------
" Highlighting Commands:
hi AltAltUnique start=[m[30;47m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=15     guifg=black          guibg=white
hi AltConstant  start=[m[33;40m   stop=[m[32m       cterm=NONE      ctermfg=14      ctermbg=0      gui=NONE,italic      guifg=yellow         guibg=black
hi AltFunction  start=[m[32;40m   stop=[m[32m       cterm=NONE      ctermfg=10      ctermbg=0      gui=NONE,italic      guifg=green          guibg=black
hi AltType      term=underline        start=[m[4;32;40m stop=[m[32m cterm=underline ctermfg=10     ctermbg=0            gui=NONE,underline,italic guifg=SeaGreen1 guibg=black
hi AltUnique    start=[m[35;47m   stop=[m[32m       cterm=NONE      ctermfg=13      ctermbg=15     guifg=magenta        guibg=white
hi Blue         start=[m[34m      stop=[m[32m       cterm=NONE      ctermfg=9       guifg=blue     guibg=navyblue
hi Brown        start=[m[38;5;94m stop=[m[32m       cterm=NONE      ctermfg=14      guifg=khaki4   guibg=navyblue
hi ColorColumn  term=reverse          cterm=NONE            ctermbg=4       gui=NONE        guibg=DarkRed
hi Comment      start=[m[37m      stop=[m[32m       cterm=NONE      ctermfg=15      guifg=white    guibg=navyblue
hi Conceal      cterm=NONE            ctermfg=10            ctermbg=0       guifg=Green     guibg=navyblue
hi Constant     start=[m[33m      stop=[m[32m       cterm=NONE      ctermfg=14      guifg=yellow   guibg=navyblue
hi CursorColumn term=reverse          cterm=NONE            ctermbg=8       gui=NONE        guibg=Grey40
hi Cursor       gui=NONE              guifg=blue            guibg=green
hi CursorLineNr term=bold             cterm=NONE            ctermfg=14      gui=bold        guifg=Yellow
hi CursorLine   term=underline        cterm=underline       gui=NONE        guibg=Grey40
hi Cyan         start=[m[36m      stop=[m[32m       cterm=NONE      ctermfg=11      guifg=cyan     guibg=navyblue
hi Debug        start=[m[31m      stop=[m[32m       cterm=NONE      ctermfg=13      ctermbg=0      guifg=magenta        guibg=black
hi Delimiter    start=[m[37m      stop=[m[32m       cterm=NONE      ctermfg=15      guifg=white    guibg=navyblue
hi DiffAdd      ctermfg=10            ctermbg=18            guifg=#58ffFF   guibg=#104e8b
hi DiffChange   start=[m[33;44m   stop=[m[32m       cterm=NONE      ctermfg=14      ctermbg=18     guifg=Yellow         guibg=DodgerBlue4
hi DiffDelete   start=[m[37;44m   stop=[m[32m       cterm=NONE      ctermfg=15      ctermbg=18     guifg=White          guibg=DodgerBlue4
hi DiffText     start=[m[31;44m   stop=[m[32m       cterm=NONE      ctermfg=12      ctermbg=18     guifg=Red            guibg=DodgerBlue4
hi Directory    start=[m[37m      stop=[m[32m       cterm=NONE      ctermfg=15      guifg=white
hi ErrorMsg     term=standout         start=[m[37;41m   stop=[m[32m cterm=NONE      ctermfg=15     ctermbg=12           guifg=White          guibg=Red
hi Error        start=[m[37;41m   stop=[m[32m       cterm=NONE      ctermfg=15      ctermbg=12     guifg=white          guibg=red
hi FoldColumn   term=standout         start=[m[36;40m   stop=[m[32m cterm=NONE      ctermfg=11     ctermbg=0            guifg=Cyan           guibg=brown
hi Folded       start=[m[35;40m   stop=[m[32m       cterm=NONE      ctermfg=13      ctermbg=0      guifg=magenta        guibg=black
hi Function     start=[m[36m      stop=[m[32m       cterm=NONE      ctermfg=11      guifg=cyan     guibg=navyblue
hi Green        start=[m[32m      stop=[m[32m       cterm=NONE      ctermfg=10      guifg=green    guibg=navyblue
hi Identifier   term=italic           start=[m[2;32m    stop=[m[32m cterm=NONE      ctermfg=10     gui=NONE,italic      guifg=SeaGreen1      guibg=navyblue
hi Ignore       cterm=NONE            ctermfg=0             gui=NONE        guifg=bg
hi IncSearch    start=[m[30;42m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=10     gui=NONE             guifg=black          guibg=green
hi lCursor      guifg=yellow          guibg=green
hi LineNr       term=underline        start=[m[33m      stop=[m[32m cterm=NONE      ctermfg=14     gui=NONE             guifg=Yellow
hi Magenta      start=[m[35m      stop=[m[32m       cterm=NONE      ctermfg=13      			   gui=NONE             guifg=magenta        guibg=navyblue
hi MatchParen   start=[m[34;46m   stop=[m[32m       cterm=NONE      ctermfg=9       ctermbg=11     gui=NONE             guifg=blue           guibg=cyan
hi Menu         start=[m[30;44m   stop=[m[32m       guifg=black     guibg=gray75
hi ModeMsg      cterm=NONE            ctermfg=10            gui=NONE        guifg=SeaGreen
hi MoreMsg      cterm=NONE            ctermfg=10            gui=NONE        guifg=SeaGreen
hi NonText      cterm=NONE            ctermfg=9             gui=NONE        guifg=Blue
hi Normal       start=[m[32m      stop=[m[32m       cterm=NONE      ctermfg=10      gui=NONE       guifg=green          guibg=navyblue
hi Pmenu        cterm=NONE            ctermfg=0             ctermbg=13      gui=NONE        guibg=Magenta
hi PmenuSbar    cterm=NONE            ctermbg=7             gui=NONE        guibg=Grey
hi PmenuSel     cterm=NONE            ctermfg=8             ctermbg=0       gui=NONE        guibg=DarkGrey
hi PmenuThumb   cterm=NONE            ctermbg=15            gui=NONE        guibg=White
hi PreProc      start=[m[37;44m   stop=[m[32m       cterm=NONE      ctermfg=15      ctermbg=18     gui=NONE             guifg=white          guibg=blue3
hi Question     start=[m[33m      stop=[m[32m       cterm=NONE      ctermfg=14      gui=NONE       guifg=yellow
hi Red          start=[m[31m      stop=[m[32m       cterm=NONE      ctermfg=12      gui=NONE       guifg=red            guibg=navyblue
hi Scrollbar    gui=NONE              guifg=gray80          guibg=gray70
hi Search       start=[m[33;44m   stop=[m[32m       cterm=NONE      ctermfg=14      ctermbg=18     gui=NONE             guifg=yellow         guibg=blue
hi SignColumn   start=[m[37;40m   stop=[m[32m       cterm=NONE      ctermfg=15      ctermbg=0      gui=NONE             guifg=white          guibg=black
hi SpecialKey   start=[m[30;45m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=13     gui=NONE             guifg=black          guibg=magenta
hi Special      start=[m[32;44m   stop=[m[32m       cterm=NONE      ctermfg=10      ctermbg=18     gui=NONE             guifg=green          guibg=blue
hi SpellBad     term=reverse          cterm=NONE            ctermbg=12      gui=undercurl   guisp=Red
hi SpellCap     term=reverse          cterm=NONE            ctermbg=9       gui=undercurl   guisp=Blue
hi SpellLocal   term=underline        cterm=NONE            ctermbg=11      gui=undercurl   guisp=Cyan
hi SpellRare    term=reverse          cterm=NONE            ctermbg=13      gui=undercurl   guisp=Magenta
hi Statement    start=[m[36m      stop=[m[32m       cterm=NONE      ctermfg=14      gui=NONE,italic guifg=cyan           guibg=navyblue
hi StatusLineNC start=[m[30;42m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=2      gui=NONE             guifg=green          guibg=DarkGreen
hi StatusLine   start=[m[30;46m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=11     gui=NONE             guifg=blue           guibg=cyan
hi String       start=[m[33m      stop=[m[32m       cterm=NONE      ctermfg=14      gui=NONE       guifg=yellow         guibg=navyblue
hi Subtitle     start=[m[35m      stop=[m[32m       cterm=NONE      ctermfg=13      gui=NONE       guifg=SeaGreen1      guibg=navyblue
hi TabLineFill  start=[m[34;44m   stop=[m[32m       cterm=NONE      ctermfg=9       ctermbg=18     gui=NONE             guifg=blue           guibg=blue
hi TabLineSel   start=[m[37;44m   stop=[m[32m       cterm=NONE      ctermfg=10      ctermbg=18     gui=NONE,underline,italic guifg=green          guibg=blue
hi TabLine      start=[m[30;44m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=18     gui=NONE,underline,italic guifg=black          guibg=blue
hi Tags         start=[m[33;44m   stop=[m[32m       cterm=NONE      ctermfg=14      ctermbg=18     gui=NONE             guifg=yellow         guibg=blue3
hi Title        start=[m[37m      stop=[m[32m       cterm=NONE      ctermfg=15      gui=NONE       guifg=white
hi Todo         start=[m[37;45m   stop=[m[32m       cterm=NONE      ctermfg=15      ctermbg=13     gui=NONE             guifg=white          guibg=magenta
hi Type         term=underline        start=[m[4;32m    stop=[m[32m cterm=underline ctermfg=10     gui=NONE,underline        guifg=SeaGreen1
hi Underlined   term=underline        cterm=underline       ctermfg=10      gui=NONE,underline   guifg=green
hi Unique       start=[m[34;47m   stop=[m[32m       cterm=NONE      ctermfg=9       ctermbg=15     gui=NONE             guifg=blue3          guibg=white
hi User1        start=[m[37;44m   stop=[m[32m       cterm=NONE      ctermfg=15      ctermbg=18     gui=NONE             guifg=white          guibg=blue
hi User2        start=[m[36;44m   stop=[m[32m       cterm=NONE      ctermfg=11      ctermbg=18     gui=NONE             guifg=cyan           guibg=blue
hi User3        start=[m[32;44m   stop=[m[32m       cterm=NONE      ctermfg=10      ctermbg=18     gui=NONE             guifg=green          guibg=blue
hi User4        start=[m[32;44m   stop=[m[32m       cterm=NONE      ctermfg=12      ctermbg=18     gui=NONE             guifg=red            guibg=blue
hi VertSplit    start=[m[30;42m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=10     gui=NONE             guifg=black          guibg=DarkGreen
hi VisualNOS    term=underline        cterm=underline       gui=underline
hi Visual       start=[m[40;32m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=10     guifg=Grey           guibg=fg
hi WarningMsg   start=[m[30;43m   stop=[m[32m       cterm=NONE      ctermfg=0       ctermbg=14     guifg=black          guibg=yellow
hi White        start=[m[37m      stop=[m[32m       cterm=NONE      ctermfg=15      guifg=white    guibg=navyblue
hi WildMenu     term=standout         ctermfg=0             ctermbg=14      guifg=Black     guibg=Yellow
hi Yellow       start=[m[33m      stop=[m[32m       cterm=NONE      ctermfg=14      guifg=yellow   guibg=navyblue
