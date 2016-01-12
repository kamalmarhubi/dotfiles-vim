" .vimrc

" Be iMproved
set nocompatible

" Basic settings
set hidden
set noshowmode  " We get current mode from airline

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'davidzchen/vim-bazel'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp', 'go', 'python', 'rust'], 'do': './install.py --clang-completer --gocode-completer --racer-completer' }

call plug#end()

" Disable cursor blink in gui
set guicursor+=a:blinkon0

" Setup highlighting
set cursorline
