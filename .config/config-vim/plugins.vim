"Plug 'altercation/vim-colors-solarized'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'oplatek/Conque-Shell'

" General Completions {{{
Plug 'Valloric/YouCompleteMe' " slows startup - can we load on edit?
Plug 'Raimondi/delimitMate'
" }}}

" Snippets {{{
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " Snippets repository
" }}}

" Web Development {{{
Plug 'marijnh/tern_for_vim',      { 'for': 'javascript'} " JS completions
Plug 'maksimr/vim-jsbeautify',    { 'for': 'javascript'}
Plug 'wookiehangover/jshint.vim', { 'for': 'javascript'}
Plug 'pangloss/vim-javascript',   { 'for': 'javascript'}
Plug 'raichoo/purescript-vim',    { 'for': 'javascript'}
" }}}

Plug 'suan/vim-instant-markdown', { 'for': 'markdown'} " markdown WYSIWYG in browser
Plug 'klen/python-mode',          { 'for': 'python'}
Plug 'derekwyatt/vim-scala',      { 'for': 'scala'}
