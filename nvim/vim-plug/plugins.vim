call plug#begin('~/.config/nvim/autoload/plugged')

		" Auto pairs for '(' '[' '{'
		Plug 'jiangmiao/auto-pairs'
		Plug 'mattn/emmet-vim'	
		Plug 'kaicataldo/material.vim', { 'branch': 'main' }
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Initialize plugin system
call plug#end()

