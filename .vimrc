""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim     " Runtime path
set nocompatible                      " Vundle requirement
filetype off                          " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'         " Vundle 
Plugin 'scrooloose/nerdtree'          " NERDTree
Plugin 'scrooloose/nerdcommenter'     " NERDCommenter
Plugin 'airblade/vim-gitgutter'       " Git gutter
Plugin 'ryanoasis/nerd-fonts'	      " NERD Fonts
Plugin 'kien/ctrlp.vim'               " Ctrl+P
Plugin 'bling/vim-airline'            " Status bar 
Plugin 'klen/python-mode'	      " Python IDE
Plugin 'pangloss/vim-javascript'      " JavaScript 
Plugin 'dracula/vim'		      " Dracula theme

call vundle#end()

""" Other settings
command! CP execute "CtrlP"	      " :CP
set smarttab                          " insert spaces or tabs
set sw=2                              " shift width
set ts=2                              " tabstop
set number                            " line numbers
set showcmd                           " cmd in status
let mapleader="," 		      " custom vim leader
let g:NERDTreeWinSize=22              " nerdtree size
set encoding=utf8		      " encoding for icons
syntax on			      " colors


""" Miscellaneous
let g:airline_powerline_fonts = 1     			" font for airline
let g:NERDTreeFileExtensionHighlightFullName = 1	" highlighting
let g:WebDevIconsUnicodeDecorateFolderNodes = 1		" folder icons
let g:DevIconsEnableFoldersOpenClose = 1		" open / close

""" Color scheme
colorscheme dracula
let g:dracula_italic = 0
set t_Co=256
hi Normal ctermbg=NONE
hi LineNr ctermfg=246
