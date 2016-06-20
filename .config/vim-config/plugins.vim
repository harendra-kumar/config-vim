"Plug 'vim-scripts/Conque-Shell' "does not include python files
Plug 'oplatek/Conque-Shell'

"Plug 'Chiel92/vim-autoformat'

" General Completions {{{
"Plug 'vim-scripts/SyntaxComplete' " General syntax based completion
Plug 'Valloric/YouCompleteMe' " slows startup - how to add on edit?
Plug 'Raimondi/delimitMate'

" }}}

" Snippets {{{
"Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " Snippets repository
" }}}

" Web Development {{{
"Plug 'michalliu/jsruntime.vim'
"Plug 'michalliu/jsoncodecs.vim'
"Plug 'michalliu/sourcebeautify.vim'

"Plug 'othree/javascript-libraries-syntax.vim' " Requires SyntaxComplete
Plug 'marijnh/tern_for_vim',      { 'for': 'javascript'} " JS completions

Plug 'maksimr/vim-jsbeautify',    { 'for': 'javascript'}
Plug 'wookiehangover/jshint.vim', { 'for': 'javascript'}
Plug 'pangloss/vim-javascript',   { 'for': 'javascript'}
Plug 'raichoo/purescript-vim',    { 'for': 'javascript'}
" }}}

Plug 'suan/vim-instant-markdown', { 'for': 'markdown'} " markdown WYSIWYG in browser
Plug 'klen/python-mode',          { 'for': 'python'}
Plug 'derekwyatt/vim-scala',      { 'for': 'scala'}
