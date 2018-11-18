set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle/.git"))
  !git clone git://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle
endif

set rtp+=~/.vim/bundle/Vundle

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim.git'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on
