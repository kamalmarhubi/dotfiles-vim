" kmrhb vimrc

set nocompatible               " be iMproved 

" initialise vundle
filetype on                    " workaround for issue with default OS X vim version
filetype off                   " required for vundle

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" make vundle use git protocol
let g:vundle_default_git_proto = 'git'

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

" disable cursor blink in gui
set guicursor+=a:blinkon0

" setup highlighting
set cursorline

" configure vim-slime to use tmux
let g:slime_target = "tmux"

" bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'jpalardy/vim-slime'
Bundle 'vim-coffee-script'
Bundle 'SirVer/ultisnips'
Bundle 'ervandew/supertab'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-rooter'
Bundle 'myusuf3/numbers.vim'
Bundle 'skwp/vim-easymotion'
Bundle 'mileszs/ack.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-markdown'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'tpope/vim-sleuth'
Bundle 'mattn/zencoding-vim'
Bundle 'sjl/gundo.vim'
Bundle 'saltstack/salt-vim'

" basic settings
set hidden
set backspace=indent,eol,start

" set colorscheme
set background=dark
colorscheme solarized

" powerline setup
let g:Powerline_colorscheme="solarized256"
let g:Powerline_symbols="fancy"
if has("gui_macvim")
	set guifont="Menlo\ for\ Powerline:h12"
endif

" easymotion setup
let g:EasyMotion_keys = 'fjdkslwovneiwo'

" toggle pastemode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" UltiSnips
" configure trigger to be tab / s-tab
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsEditSplit="horizontal"

" gundo mapping
nnoremap <F5> :GundoToggle<CR>

set laststatus=2

" detect filetypes -- required after bundles for vundle
filetype plugin indent on
syntax on
