let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '~/.fzf'

" Initialize plugin system
call plug#end()

set nocompatible              " required
set nu
filetype off                  " required

filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

" <Enter> insert new line
nmap <Enter> o<Esc>
nnoremap <C-g> :Rg<Cr>

