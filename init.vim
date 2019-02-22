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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'brooth/far.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'hashivim/vim-vagrant'

call vundle#end()
filetype plugin indent on

" Add Line Numbers
set nu

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

"" NerdTree Pane Size
let g:NERDTreeWinSize=50

"" Init CtrlP
set runtimepath^=~/.config/nvim/bundle/ctrlp.vim

"" Remap CtrlP Keys
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" CtrlP Directories & Files Configuration
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

"" Vim-Terraform Configuration Block
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save=1
