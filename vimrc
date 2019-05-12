" invoke pathogen (package manager)
execute pathogen#infect()

" syntax specific highlighting
syntax on

" recognize filetypes
filetype plugin on

" no filetype specific indentation
filetype indent off

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

" If filetype is LaTeX:
" automatically wrap text (as closely as possible) when 90 characters are in 1  line
autocmd FileType tex call Tex_config()
  function Tex_config()
    set tw=90
  endfunction
" If filetype is .txt:
" automatically wrap text (as closely as possible) when 90 characters are in 1  line
autocmd bufreadpre *.txt setlocal tw=90

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

" -   -   -   -   -   -   -   -
"     LaTeX 
" -   -   -   -   -   -   -   -

" overrule tex trying to be clever and find the difference between latex and plaintex
" (this is useful for when you have chapters/sections of your document in different files)
let g:tex_flavor = "latex"

" disable mesy latex indentations
autocmd FileType tex setlocal shiftwidth=0 

" PDF display in zathura
" let g:vimtex_view_method='zathura'
let g:vimtex_view_method='skim'

" Turn some commands into symbols (e.g. \in, \Delta, ...) (off because of weird line
" spacing)
" set conceallevel=1
" let g:tex_conceal='abdmg'

" turn on and configure default vimtex folding
" (there are alternative packages, and my config for one of those is commented
" out below this)
set foldmethod=expr
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types = {
        \ 'preamble' : {'enabled':1},
        \ 'comments' : {'enabled' : 1},
        \ 'envs' : {
        \   'blacklist' : [],   
        \   'whitelist' : [],   
        \ },
        \ 'env_options' : {},
        \ 'markers' : {},
        \ 'sections' : {
        \   'parse_levels' : 1,
        \   'sections' : [      
        \     'part',
        \     'chapter',
        \     'section',
        \     'subsection',
        \     'subsubsection',
        \   ],
        \   'parts' : [         
        \     'appendix',
        \     'frontmatter',
        \     'mainmatter',
        \     'backmatter',
        \   ],
        \ }
        \}

" allow special package (vim-tex-fold-master) to fold. 
" za folds the fold the cursor is in, zx folds all others (i.e. to fold all go to top and
" do zx)
" let g:tex_fold_override_foldtext = 1

" allow the markers {{{}}} to indicate custom folding
" let g:tex_fold_allow_marker = 1

" let g:tex_fold_sec_char = '>'

" customize which LaTeX environments to fold
" let g:tex_fold_additional_envs = ['largebox','enumerate','table','tabular','tikz','overlay','cd','verbatim','comment','environment','center','solution','question','minipage','exm','rmk','defn','clm','eq','gather','align','figure','subfigure','table','thebibliography','keywords','abstract','titlepage','exr','Proof','proof','sol','feynman','matrix','pmat','bmat']
" let g:Tex_FoldedSections='bibliography,part,chapter,section,subsection,subsubsection,paragraph,solution,feynman'

"enable spell check (press zg (zug) over selected word to add to (remove from)  dictionary)
" also, if you press control-p, it makes a guess for the most recent mistake.
setlocal spell
set spelllang=en_gb
inoremap <C-p> <c-g>u<Esc>[s1z=`]a<c-g>u

" define environments which will contain underscores etc to prevent error
" highlighting
au filetype tex syntax region texRefZone start='\\cref{' end='}'
au filetype tex syntax region texRefZone start='\\Cref{' end='}'

" put \begin{} \end{} tags tags around the current word
map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA<esc>o
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA<esc>o

" put &\n for cntrl-a
map  <C-A>      i&<ESC>o
map! <C-A>      &<ESC>o

" map :W to do same as :w (and x)
map   :W	:w
map   :X	:x

map   :col	:%!column -t

" map double equals to single alignment
map!     ==  &=

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

" -   -   -   -   -   -   -   -
"     UltiSnips
" -   -   -   -   -   -   -   -

" open snippets file in new tab (enter :UltiSnipsEdit FileType to edit)
let g:UltiSnipsEditSplit='tabdo'

" trigger keys for ultisnips
let g:UltiSnipsExpandTrigger             =  '<tab>'
let g:UltiSnipsListSnippets              =  '<c-tab>'
let g:UltiSnipsJumpForwardTrigger        =  '<c-j>'
let g:UltiSnipsJumpBackwardTrigger       =  '<c-k>'

