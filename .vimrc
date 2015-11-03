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
    call vundle#end()
filetype plugin indent on

function Set_c_env()
    set colorcolumn=80
    highlight ColorColumn ctermbg=darkgray

    set tabstop=8
    set softtabstop=8
    set shiftwidth=8
    set noexpandtab

    let &path.="src/include,/usr/include"
    let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
endfunction

function Set_html_env()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set expandtab
endfunction

augroup filetype_c
    autocmd!
    autocmd FileType c :call Set_c_env()
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html :call Set_html_env()
augroup END


