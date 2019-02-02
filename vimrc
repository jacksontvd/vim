" invoke pathogen (package manager)
execute pathogen#infect()

" syntax specific highlighting
syntax on

" recognize filetypes
filetype plugin on

" filetype specific indentation
filetype indent on

" disable mesy latex indentations
autocmd FileType tex setlocal shiftwidth=0 

" linewrap indentation
set breakindent

" number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" show line numbers 
set number

" highlight current line (off because of slow screen redrawing when scrolling)
" set cul!

" show command in bottom bar
set showcmd

" automatically wrap text (as closely as possible) when 90 characters are in 1
" line
set tw=90

" indent lines under indented lines
set autoindent

" Matching braces
set showmatch

" incremental searching
set incsearch

" search highlighting
set hlsearch

" backspace full indent
set backspace=indent,eol,start

" setting variables for individual files
set modeline

" fast terminal connection (smoothness of redrawing)
set ttyfast

"ctrl-l redraws the screen (get rid of search highlighting)
nnoremap <silent> <C-l> :nohl<CR><C-l> 

" set colorscheme (off in favor of badwolf)
" colorscheme astronaut

" set colorscheme
colorscheme badwolf

" command line completion
set wildmenu

" ctrl n for completion
set grepprg=grep\ -nH\ $*

" Change default target to pdf, if not dvi is used
let g:Tex_DefaultTargetFormat = 'pdf'

" Compile with pdflatex
" let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf,pdf'

" Compile with lualatex
" let g:Tex_CompileRule_pdf = 'lualatex -synctex=1 -interaction=nonstopmode $*'

" Run multiple times to clear issues with references
let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf,pdf'

" PDF display rule
let g:Tex_ViewRule_pdf = 'Skim'

" customize which LaTeX environments to fold
let g:Tex_FoldedEnvironments='largebox,enumerate,table,tabular,tikz,overlay,cd,verbatim,comment,environment,center,solution,question,minipage,exm,rmk,defn,clm,eq,gather,align,figure,subfigure,table,thebibliography,keywords,abstract,titlepage,exr,Proof,proof,sol,feynman,matrix,pmat,bmat'

let g:Tex_FoldedSections='part,chapter,section,subsection,subsubsection,paragraph,solution,feynman'

let g:Tex_FoldedMisc='preamble,>>>,<<<'

"enable spell check (press zg (zug) over selected word to add to (remove from)  dictionary)
set spelllang=en_gb spell

" define environments which will contain underscores etc to prevent error
" highlighting
au filetype tex syntax region texRefZone start='\\cref{' end='}'
au filetype tex syntax region texRefZone start='\\Cref{' end='}'

" put \begin{} \end{} tags tags around the current word
map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA<esc>o
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<++><esc>kA<esc>o

" put &\n for cntrl-a
map  <C-A>      i&<ESC>o
map! <C-A>      &<ESC>o

" easy ways to type double quotation mark
map   ``	i\"\"<++><ESC>hhhhhxhhxli<ESC>l
map!  ``	 \"\"<++><ESC>hhhhhxhhxli<ESC>li

" first type a word, then push the left single quote twice. This will
" automatically put single quotes around the whole word.
" (For LaTeX)
" map   ''	i\' <ESC>hhxbi\`<ESC>hxwwli
map!  ''	 \' <ESC>hhxbi\`<ESC>hxwwli

" map :W to do same as :w (and x)
map   :W	:w
map   :X	:x

map   :col	:%!column -t

" map double equals to single alignment
map!     ==  &=

" disable error jumping in latex (off)
let g:Tex_GotoError=0

" Show preview LaTeX in math mode
" set conceallevel=2

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters left instead of code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
