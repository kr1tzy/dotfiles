""" Plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'                  
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'                    
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'                     
Plug 'tpope/vim-fugitive'
Plug 'myusuf3/numbers.vim'                        
Plug 'bling/vim-airline'                          
Plug 'flazz/vim-colorschemes'                     
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline-themes'             
Plug 'leafgarland/typescript-vim'                 
Plug 'peitalin/vim-jsx-typescript'                
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'

call plug#end()

""" Config
syntax on
filetype plugin indent on                                  
colorscheme CodeFactoryV3
map ,n :NERDTreeToggle <CR>
map ,f :Files <CR>
map ,w <C-w>
set shiftwidth=4 
set tabstop=4
set expandtab                                       
set smarttab
set smartindent
set fileformat=unix
set ttymouse=xterm2                                 
set clipboard=unnamed                               
set belloff=all                                     
set showmatch
set mouse=a
let mapleader=","                                   
let g:rainbow_active=1
let g:fzf_action={ 'enter': 'tab split' }
let g:WebDevIconsNerdTreeAfterGlyphPadding='  '
let g:WebDevIconsUnicodeGlyphDoubleWidth=1
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:DevIconsEnableFoldersOpenClose=1
let g:nerdtree_tabs_open_on_console_startup=2
let NERDTreeShowHidden=1
let g:ale_fix_on_save=1
let g:ale_warn_about_trailing_whitespace=0
let g:ale_linters = { 
\    'python': ['pylint', 'mypy'], 
\    'javascript': ['eslint'], 
\    'typescript': ['eslint'],
\    'javascriptreact': ['eslint'],
\    'typescriptreact': ['eslint'],
\}
let g:ale_fixers = { 
\       'python': ['black'], 
\       'html': ['prettier'], 
\       'css': ['prettier'], 
\       'javascript': ['prettier'], 
\       'typescript': ['prettier'], 
\       'javascriptreact': ['prettier'], 
\       'typescriptreact': ['prettier'], 
\       'json': ['prettier']
\}

""" Autocommands
if has("autocmd")
    " Remember the last position in each file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
