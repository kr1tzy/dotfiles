""" Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim                " Runtime path
set nocompatible                                 " Not compatible w/ Vi
filetype off                                     " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle'                        " Vundle requirement
filetype off                                     " Vundle requirement

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                    " Vundle
Plugin 'scrooloose/nerdcommenter'                " NERDCommenter
Plugin 'scrooloose/nerdtree'                     " NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'             " NERDTree Git plugin
Plugin 'jistr/vim-nerdtree-tabs'                 " NERDTree tabs
Plugin 'ryanoasis/vim-devicons'                  " NERDTree Dev icons
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " NERDTree Dev icons colors
Plugin 'airblade/vim-gitgutter'                  " Git gutter
Plugin 'myusuf3/numbers.vim'                     " Numbers
Plugin 'kien/ctrlp.vim'                          " Ctrl+P
Plugin 'bling/vim-airline'                       " Status bar
Plugin 'flazz/vim-colorschemes'                  " All the colorschemes
Plugin 'vim-airline/vim-airline-themes'          " Airline schemes
Plugin 'pangloss/vim-javascript'                 " JS syntax highlighting
Plugin 'leshill/vim-json'                        " JSON syntax highlighting
Plugin 'mxw/vim-jsx'                             " JSX syntax highlighting
Plugin 'skywind3000/asyncrun.vim'                " Asynchronous shell commands
Plugin 'sbdchd/neoformat'                        " Code formatter

call vundle#end()

""" Nerd tree
map <C-x> :NERDTreeToggle<CR>
nnoremap <C-a> <C-w>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let NERDTreeShowHidden=1
let g:NERDTreeMouseMode=3
set mouse=a

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

""" Auto-commands
let g:neoformat_try_formatprg = 1
" Prettier wired in to Neoformat
augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
                                                            \--stdin\
                                                            \--print-width\ 80\
                                                            \--single-quote\
                                                            \--trailing-comma\ es6
    autocmd BufWritePre *.js,*.jsx Neoformat
augroup END

""" Color scheme
syntax on
set t_Co=256
colorscheme darkglass
hi Normal ctermbg=NONE
hi Normal guibg=NONE
