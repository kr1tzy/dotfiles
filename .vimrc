""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim     " Runtime path
set nocompatible                      " Vundle requirement
filetype off                          " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'         " Vundle 
Plugin 'scrooloose/nerdtree'          " NERDTree
Plugin 'scrooloose/nerdcommenter'     " NERDCommenter
Plugin 'tpope/vim-fugitive'           " Awesome git wrapper
Plugin 'airblade/vim-gitgutter'       " Git gutter
Plugin 'kien/ctrlp.vim'               " Ctrl+P
Plugin 'bling/vim-airline'            " Status bar 
Plugin 'klen/python-mode'             " Python IDE
Plugin 'maxmellon/vim-jsx-pretty'     " React / JSX syntax


call vundle#end()
filetype plugin indent on

""" Other settings
command! CP execute "CtrlP"
set smarttab                          " insert spaces (or tabs) to go to the next indent
set shiftwidth=2                      " shift width
set tabstop=2                         " tabstop
set number                            " line numbers
set showcmd                           " shows command in status bar
let g:vim_jsx_pretty_colorful_config = 1
let mapleader=","											" custom vim leader
