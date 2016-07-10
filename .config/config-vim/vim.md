## Show this help file
,vh

## Help

| Function        | Commands             |
|-----------------|----------------------|
Usage             | `:viusage`
All Possibilities | `:<tab>`
Help possiblities | `:help <tab> | :helpgrep`
Key notation      | `:help key-notation`
Variables         | `:set`
Maps              | `:map | :help map-commands | :help map-listing`
Context help (K)  | `:setlocal keywordprg=:help`

## Windows

| Function        | Commands             |
|-----------------|----------------------|
HELP              | `:help window <tab>`
CLOSE             | `[:hide | :hide buffer | :hide [cmd] | :close | :quit]`
CLOSE             | `CTRL-W [q(uit) | c(lose) | o(nly)]`
RESIZE            | `CTRL-W [+ | - | < | > | = | _ | |]`
CURSOR            | `CTRL-W [w | W ]`
CURSOR            | `CTRL-W [h | j | k | l | p(revious) | P(review) | t(op) | b(ottom)]`
WINMOV            | `CTRL-W [r | R(otate) | x(change) | H | J | K | L]`
SPLITS            | `:new | :vnew | :split | :vsplit`

## Visual

| Function        | Commands             |
|-----------------|----------------------|
HELP              | `:help visual<tab>`
SELECTION         | `[v | V | CTRL-V]`
INSERTION         | `I`

## Others

| Function        | Commands             |
|-----------------|----------------------|
FILES/BUFFERS     | `:files | :buffers | :ls | :bd | :bp | :bn`
YANK/PASTE        | `:help copy-move | :set paste`
CLIPBOARD         | `:1,10y + | :1,10y * | "+y | "*y | "+p | "*p`
FORMATTTING       | `:help formatting | :retab`
RECORDING         | `: q<letter><keystrokes>q | @<letter> | @@`
CONQUE            | `: <F9>`

## Haskell Vim Now

| Function        | Commands             |
|-----------------|----------------------|
DISPLAY           | `,r(edraw) | ,<CR> | ,ma(ctive) | ,mo(ff)`
FILES             | `,e(dit) | ,<space>`
BUFFERS           | `,b<space> | ,bp(revious) | ,bn(ext) | ,bd(elete)`
UNDO              | `,u(ndo)`
SEARCH            | `*(forward) | # (backward)`
WINMOV            | `<c-h> | <c-j> | <c-k> | <c-l>`
SPLITS            | `,sh | ,sj | ,sk | ,sl`
SPELL             | `,ss, ]s, [s, z=`
NERDTREE          | `,f | ,F`
ALIGN             | `,a= | ,a, | ,a| | ,ap(rompt)`
TAGBAR            | `,tt`
CSCOPE            | `<C-\>`
GIT               | `,gs(tatus) | ,gg(rep) | ,gl | ,gd(iff) | ,g? | ,gb(lame)`
GHCI              | `,gh | ,ghl`
