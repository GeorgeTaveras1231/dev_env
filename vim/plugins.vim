scriptencoding utf-8
set encoding=utf-8

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugins ---------------------{{{
Plugin 'gmarik/Vundle.vim'

" Visual {{{
Plugin 'flazz/vim-colorschemes'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'blueyed/vim-diminactive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" }}}

" Langs {{{
Plugin 'elixir-lang/vim-elixir'
Plugin 'vim-ruby/vim-ruby'
Plugin 'stephpy/vim-yaml'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'othree/yajs.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
" }}}

" Integration {{{
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rvm'
Plugin 'thoughtbot/vim-rspec'
" }}}

" Tools {{{
Plugin 'terryma/vim-expand-region'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rizzatti/dash.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'jgdavey/tslime.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
" }}}
"}}}
" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
