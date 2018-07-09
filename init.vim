" Neovim Configuration

" Vundle Configuration Block

set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/Vundle.vim')

" Add Plugins Here
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()
filetype plugin indent on

" Vim Split Configuration Block
set splitbelow
set splitright

"" Split Navigations
nnoremap <C-K> <C-W><C-J>
nnoremap <C-I> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-H>

" Code Folding Configuration Block
set foldmethod=indent
set foldlevel=99

"" Docstrings for folded code
let g:SimpylFold_docstring_preview=1

"" Remap Folding Keys
nnoremap <C-F> za

" Character Encoding Block
set encoding=utf-8

" NerdTree Configuration Block
let NERDTreeIgnore=['\.pyc$', '\~$']

"" Open NerdTree Automatically
autocmd vimenter * NERDTree

"" Open NerdTree When No File Is Passed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Open NerdTree When a Directory Is Passed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"" Remap NerdTree Keys
map <C-n> :NERDTreeToggle<CR>