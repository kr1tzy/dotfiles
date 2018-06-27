""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim     " Runtime path
set nocompatible                      " Vundle requirement
filetype off                          " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'         " Vundle 
Plugin 'scrooloose/nerdtree'          " NERDTree
Plugin 'scrooloose/nerdcommenter'     " NERDCommenter
Plugin 'airblade/vim-gitgutter'       " Git gutter
Plugin 'kien/ctrlp.vim'               " Ctrl+P
Plugin 'bling/vim-airline'            " Status bar 
Plugin 'klen/python-mode'							" Python IDE
Plugin 'morhetz/gruvbox'              " Color scheme

call vundle#end()
filetype plugin indent on

""" Color scheme
set t_Co=256
set background=dark							
let g:gruvbox_contrast_dark='hard'		
colorscheme gruvbox
highlight Normal ctermbg=None         

""" Other settings
command! CP execute "CtrlP"						" :CP
set smarttab                          " insert spaces or tabs
set sw=2                              " shift width
set ts=2                              " tabstop
set number                            " line numbers
set showcmd                           " cmd in status
let mapleader=","											" custom vim leader
