set nocompatible
syntax enable
filetype plugin indent on

" General Settings
set path+=**				" Searches current directory recursively
set hidden					" Needed to keep multiple buffers open
set nobackup				" No auto backups
set noswapfile				" No swap
set encoding=UTF-8
set t_Co=256				" Set if term supports 256 colors
set number					" Show line numbers
set showmatch				" Show matching brackets
set clipboard=unnamedplus	" Copy & Paste between vim and other programs
set linebreak
set ignorecase				" Do case insensitive matching
set smartcase				" Do smart case matching
set mouse=a					" Enable the mouse
set shiftwidth=4       	 	" One tab == four spaces. 
set tabstop=4             	" One tab == four spaces.
set softtabstop=4
set spelllang=en_us			" Default language for the spell check
set backspace=indent,eol,start

" Styling Settings
highlight Comment cterm=italic
highlight SpellBad ctermbg=Red ctermfg=Yellow
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermbg=NONE
highlight SpellLocal cterm=Underline ctermbg=NONE

" Keybindings
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-q> :bd<CR>
