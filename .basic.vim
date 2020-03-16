syntax on               " Syntax highlighting
set number              " Line numbers
set nocompatible        " Not compatible with Vi
set backspace=2					" Backspace works like a backspace should work
set tabstop=5           " Size of a hard tab-stop
set softtabstop=0 			" Used to simulate tab stops at a width other than the hard tab-stop
set shiftwidth=4        " Indents will have a width of 4
set softtabstop=4       " Sets the number of columns for a TAB
set expandtab           " Expand Tabs to spaces
set smarttab 						" Tab key insert indents instead of tabs at the beginning of a line
set belloff=all         " Turn the annoying bells off
set numberwidth=4 			" Change the number line number width to 4 columns

" Remember the last position in each file and jump there when re-opening
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
