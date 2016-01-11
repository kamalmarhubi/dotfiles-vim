" .vimrc

" be iMproved 
set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'davidzchen/vim-bazel'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()

" disable cursor blink in gui
set guicursor+=a:blinkon0

" setup highlighting
set cursorline

" basic settings
set hidden

" set colorscheme
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-grayscale

" toggle pastemode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
