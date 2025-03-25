set clipboard+=unnamedplus
set paste              
set go+=a
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set termguicolors
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set number
set mouse=a
call plug#begin()
" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
Plug 'rodjek/vim-puppet'
call plug#end()

colorscheme gruvbox
" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
"nnoremap <F2> :set invpaste paste?<CR>
"imap <F2> <C-O>:set invpaste paste?<CR>
"set pastetoggle=<F2>

"copy and paste
noremap <C-c> "+y
vnoremap <C-c> "+y


" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" fugitive statusline
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
