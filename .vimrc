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
Plugin 'airblade/vim-rooter'
Plugin 'chriskempson/base16-vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'jpalardy/vim-slime'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'mileszs/ack.vim'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'saltstack/salt-vim'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'skwp/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

" basic settings
set hidden
set backspace=indent,eol,start

" set colorscheme
set background=dark
colorscheme base16-grayscale


" powerline setup
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
