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
Plugin 'gmarik/Vundle.vim'

" disable cursor blink in gui
set guicursor+=a:blinkon0

" setup highlighting
set cursorline

" configure vim-slime to use tmux
let g:slime_target = "tmux"

" bundles
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpalardy/vim-slime'
Plugin 'vim-coffee-script'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-powerline'
Plugin 'airblade/vim-rooter'
Plugin 'myusuf3/numbers.vim'
Plugin 'skwp/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'tpope/vim-sleuth'
Plugin 'mattn/zencoding-vim'
Plugin 'sjl/gundo.vim'
Plugin 'saltstack/salt-vim'

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
