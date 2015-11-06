set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'mattn/emmet-vim'
        Plugin 'moll/vim-node'
    call vundle#end()
filetype plugin indent on
