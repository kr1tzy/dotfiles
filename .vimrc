""" Vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'                     " NERDTree
Plug 'scrooloose/nerdcommenter'                " NERDCommenter
Plug 'jistr/vim-nerdtree-tabs'                 " NERDTree tabs
Plug 'Xuyuanp/nerdtree-git-plugin'             " NERDTree Git plugin
Plug 'ryanoasis/vim-devicons'                  " NERDTree Dev icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NERDTree Dev icons colors
Plug 'airblade/vim-gitgutter'                  " Git gutter
Plug 'myusuf3/numbers.vim'                     " Numbers
Plug 'kien/ctrlp.vim'                          " Ctrl+P
Plug 'bling/vim-airline'                       " Status bar
Plug 'flazz/vim-colorschemes'                  " Buncha colorschemes 
Plug 'vim-airline/vim-airline-themes'          " Airline schemes
Plug 'leafgarland/typescript-vim'              " Typescript syntax
Plug 'peitalin/vim-jsx-typescript'             " JSX/TSX syntax

call plug#end()

""" Nerd tree
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let NERDTreeShowHidden=1
let g:NERDTreeMouseMode=3

""" Other settings
command! CP execute "CtrlP"                      " :CP
set smarttab                                     " insert spaces or tabs
set sw=2                                         " shift width
set ts=2                                         " tabstop
set number                                       " line numbers
set showcmd                                      " cmd in status
let mapleader=","                                " custom vim leader
set encoding=utf8                                " encoding for icons
filetype plugin on                               " for nerd commenter
let g:pymode_virtualenv = 1                      " Searches for virtualenv
set mouse=a                                      " Sets the mouse
set ttymouse=xterm2                              " Vim windows adjusted with mouse
set clipboard=unnamed                            " Mac clipboard
set backspace=indent,eol,start                   " Backspace
let g:nerdtree_tabs_open_on_console_startup=2    " NERDTree w/ same state in new tab
set belloff=all                                  " Turn the annoying bells off
set showmatch                                    " Highlight closing brackets

""" Color scheme
syntax on
set t_Co=256
colorscheme mopkai
hi Normal ctermbg=NONE
hi Normal guibg=NONE

""" Autocommands
""" 	1. Remember the last position in each file and jump there when re-opening
""" 	2. Open Vim with NERDTree 
""" 	3. Vim cursor in the file opened
""" 	4. Close Vim if NERDTree is the only window left
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
	au VimEnter * NERDTree
	au VimEnter * wincmd p
	au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

