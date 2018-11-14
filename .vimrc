""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim     " Runtime path
set nocompatible                      " Vundle requirement
filetype off                          " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'         " Vundle 
Plugin 'scrooloose/nerdcommenter'     " NERDCommenter
Plugin 'airblade/vim-gitgutter'       " Git gutter
Plugin 'myusuf3/numbers.vim'					" Numbers
Plugin 'kien/ctrlp.vim'               " Ctrl+P
Plugin 'bling/vim-airline'            " Status bar 
Plugin 'scrooloose/syntastic'					" Syntax
Plugin 'dracula/vim'		      				" Dracula theme

call vundle#end()

""" Other settings
command! CP execute "CtrlP"	      		" :CP
set smarttab                          " insert spaces or tabs
set sw=2                              " shift width
set ts=2                              " tabstop
set number                            " line numbers
set showcmd                           " cmd in status
let mapleader="," 		      					" custom vim leader
set encoding=utf8		      						" encoding for icons
filetype plugin on										" for nerd commenter
syntax on				     									" colors

""" Color scheme
let g:dracula_italic=0
colorscheme dracula
set t_Co=256
hi Normal ctermbg=NONE
hi LineNr ctermfg=245
