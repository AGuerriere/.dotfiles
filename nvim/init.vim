:set number
:imap jj <Esc>
:set autoindent softtabstop=4
:set tabstop=4
:set mouse=a
:set smartindent
:set autoindent
:set showmatch
:set nowrap "don't adapt lines to screen size

source $HOME/.config/nvim/vim-plug/plugins.vim

"--EMMET CONFIG--
"redefine trigger key for emmet
let g:user_emmet_leader_key=','

"--Ayu Theme selection
colorscheme material
