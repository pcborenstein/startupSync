execute pathogen#infect()

if has('gui_running')
	colorscheme solarized
	set background=dark
	"ctag hotkeys
	"open tag in new tab
	map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
 	" open tag in split window
	map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
	"autocmd vimenter * NERDTree "automaticall open a nerdtree when gvim is opened
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=T  "remove the toolbar
endif

set mouse=c	"disable mouse
set number	"line numbers
"indentation
set autoindent	
set smartindent
set cindent
set nocp	"non compatibility mode with vi
"remove trailling whispace of these filetypes when saving
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
