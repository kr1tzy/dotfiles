""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim " Runtime path
set nocompatible 									"	Vundle requirement
filetype off											" Vundle requirement

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'							" Vundle 
Plugin 'scrooloose/nerdtree'							" NERDTree
Plugin 'scrooloose/nerdcommenter'					" NERDCommenter
Plugin 'tpope/vim-fugitive'								" Git wrapper
Plugin 'airblade/vim-gitgutter'						" Git gutter
Plugin 'kien/ctrlp.vim'										" Ctrl+P
Plugin 'bling/vim-airline'								" Status bar 
Plugin 'klen/python-mode'                 " Python IDE

call vundle#end()
filetype plugin indent on

""" Other settings
command! CP execute "CtrlP"
set expandtab 								" Tab key inserts spaces
set shiftwidth=2	  					" visual tab 
set tabstop=2					  			" tab spaces
set softtabstop=2 					  " Sets number of columns for tab
set smarttab									" insert spaces (or tabs) to go to the next indent
set number										" line numbers
set showcmd										" shows command in status bar
let mapleader=","							" vim leader
