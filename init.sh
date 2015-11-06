#!/bin/bash

# Set up Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Set up Solarized colorscheme
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized.git

cp -R ./.vim ~
cp ./.vimrc ~

# Install Plugins through Vundle
vim +PluginInstall +qall

# Compile YouCompleteMe plugin
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

# Add Vundle related configurations to .vimrc
echo '
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
' >> ~/.vimrc
