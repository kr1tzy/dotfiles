""" Vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'                " NERDCommenter
Plug 'scrooloose/nerdtree'                     " NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'             " NERDTree Git plugin
Plug 'jistr/vim-nerdtree-tabs'                 " NERDTree tabs
Plug 'ryanoasis/vim-devicons'                  " NERDTree Dev icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NERDTree Dev icons colors
Plug 'airblade/vim-gitgutter'                  " Git gutter
Plug 'myusuf3/numbers.vim'                     " Numbers
Plug 'kien/ctrlp.vim'                          " Ctrl+P
Plug 'bling/vim-airline'                       " Status bar
Plug 'flazz/vim-colorschemes'                  " All the colorschemes
Plug 'vim-airline/vim-airline-themes'          " Airline schemes

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
