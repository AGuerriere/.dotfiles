call plug#begin('~/.config/nvim/autoload/plugged')

		" Auto pairs for '(' '[' '{'
		Plug 'jiangmiao/auto-pairs'
		Plug 'mattn/emmet-vim'	
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		
" Initialize plugin system
call plug#end()
