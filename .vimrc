" .vimrc

" Be iMproved
set nocompatible

" Basic settings
set hidden
set noshowmode  " We get current mode from airline

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'davidzchen/vim-bazel'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

Plug 'google/vim-glaive'
Plug 'google/vim-maktaba'
Plug 'google/vim-syncopate'

Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp', 'go', 'python', 'rust'], 'do': './install.py --clang-completer --gocode-completer --racer-completer' }
Plug 'tomtom/tcomment_vim'

" Fuzzy search
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neomru.vim'

call plug#end()

" Load tpope's sensible so we can override settings.
runtime! plugin/sensible.vim

" Install glaive so it can configure stuff.
call glaive#Install()

" Enable syncopate's mappings.
Glaive syncopate plugin[mappings]

" denite
" TODO :-(


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

" neovim specific mappings
if has('nvim')
    " Make window navigation mappings work in neovim's terminal as well
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l

    tnoremap <PageUp> <C-\><C-n><PageUp>
endif

" Set fish as shell for terminal if present
if file_readable("/usr/bin/fish")
    set shell=/usr/bin/fish
endif

" Disable cursor blink in gui
set guicursor+=a:blinkon0

" Setup highlighting
set cursorline
