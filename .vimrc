" .vimrc

" be iMproved 
set nocompatible

" pathogen setup
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" disable cursor blink in gui
set guicursor+=a:blinkon0

" setup highlighting
set cursorline

" basic settings
set hidden
set backspace=indent,eol,start

" set colorscheme
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
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
