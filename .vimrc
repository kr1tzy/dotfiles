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
Plugin 'flazz/vim-colorschemes'                 " All the colorschemes
Plugin 'vim-airline/vim-airline-themes'         " Airline schemes
Plugin 'w0rp/ale'                               " Linter


call vundle#end()

""" Nerd tree
map <C-x> :NERDTreeToggle<CR>
nnoremap <C-a> <C-w>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"set mouse=a
"let g:NERDTreeMouseMode=3

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

""" ALE config
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_fixers = {'javascript': ['prettier'], 'python': ['autopep8', 'add_blank_lines_for_python_control_statements', 'trim_whitespace', 'remove_trailing_lines']}
let g:ale_linters = {'javascript': ['eslint'], 'python': ['pylint', 'flake8']}


""" Color scheme
syntax on
set t_Co=256
colorscheme darkglass
hi Normal ctermbg=NONE
hi Normal guibg=NONE
