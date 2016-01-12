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

" For YCM/racer completion
let g:ycm_rust_src_path = '/usr/local/src/rustc-1.5.0/src'

" Something someting neovim libtermkeys escape as alt
if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

" Set up window navigation mappings
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Make them work in neovim's terminal as well
if has('nvim')
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
endif

" Disable cursor blink in gui
set guicursor+=a:blinkon0

" Setup highlighting
set cursorline
