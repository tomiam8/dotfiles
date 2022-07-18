" from https://vim.fandom.com/wiki/Example_vimrc
set nocompatible
filetype indent plugin on
set hlsearch
set wildmenu
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set number
set tabstop=4 shiftwidth=4 expandtab
syntax on

autocmd FileType python set colorcolumn=80
autocmd FileType c set colorcolumn=80


" vim-plug plugin manager - see https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

call plug#end()
