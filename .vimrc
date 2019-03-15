""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim               " Runtime path
set nocompatible                                " Vundle requirement
filetype off                                    " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle'                       " Vundle requirement
filetype off                                    " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                   " Vundle 
Plugin 'scrooloose/nerdcommenter'               " NERDCommenter
Plugin 'scrooloose/nerdtree'                    " NERDTree
Plugin 'airblade/vim-gitgutter'                 " Git gutter
Plugin 'myusuf3/numbers.vim'                    " Numbers
Plugin 'kien/ctrlp.vim'                         " Ctrl+P
Plugin 'bling/vim-airline'                      " Status bar 
Plugin 'scrooloose/syntastic'                   " Syntax
Plugin 'klen/python-mode'                       " Python IDE
Plugin 'flazz/vim-colorschemes'                 " All the colorschemes
Plugin 'vim-airline/vim-airline-themes'         " Airline schemes


call vundle#end()

""" Nerd tree
map <C-x> :NERDTreeToggle<CR>
nnoremap <C-a> <C-w>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set mouse=a
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

""" Color scheme
syntax on
set t_Co=256
colorscheme darkglass
hi Normal ctermbg=NONE
hi Normal guibg=NONE
