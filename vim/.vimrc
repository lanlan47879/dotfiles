""" Basic Behavior
set number
set wrap
set mouse=a
set showmatch
set nofoldenable
set ignorecase 
set hlsearch
syntax enable

""" Tab Settings
set tabstop=4 
set shiftwidth=4
set expandtab
set autoindent
set smartindent

""" Handle Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(expand('~/.vim/plugged'))
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

""" Change Theme
let g:dracula_colorterm=0
let g:dracula_italic=0
colorscheme dracula
