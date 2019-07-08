" .vimrc

" Be iMproved
set nocompatible

" Basic settings
set hidden
set noshowmode  " We get current mode from airline
set smartcase
set ignorecase

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
Plug 'google/vim-jsonnet'

Plug 'jreybert/vimagit'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp', 'go', 'python', 'rust'], 'do': './install.py --clang-completer --gocode-completer --racer-completer' }
Plug 'tomtom/tcomment_vim'

Plug 'nathangrigg/vim-beancount', { 'for': ['beancount'] }

" Linting.
Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
highlight clear SignColumn
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" Fuzzy search
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neomru.vim'

call plug#end()

" Load tpope's sensible so we can override settings.
runtime! plugin/sensible.vim

" Disable swapfiles and enable persistent undo
set noswapfile
set undofile

" Install glaive so it can configure stuff.
call glaive#Install()

" Enable syncopate's mappings.
Glaive syncopate plugin[mappings]

" denite
" TODO: Customise.
" reset 50% winheight on window resize
augroup deniteresize
  autocmd!
  autocmd VimResized,VimEnter * call denite#custom#option('default',
        \'winheight', winheight(0) / 2)
augroup end

call denite#custom#option('default', {
      \ 'prompt': '❯'
      \ })

call denite#custom#var('file_rec', 'command',
      \ ['rg', '--files', '--glob', '!.git', ''])
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
      \ ['--hidden', '--vimgrep', '--no-heading', '-S'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>',
      \'noremap')
call denite#custom#map('normal', '<Esc>', '<NOP>',
      \'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')
call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')
call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>',
      \'noremap')

nnoremap <C-p> :<C-u>Denite file_rec<CR>

" Super handy command mode abbreviation for the directory of the current file.
" From
"   http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory#Using_a_command_line_abbreviation
cabbr <expr> %% expand('%:p:h')

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
