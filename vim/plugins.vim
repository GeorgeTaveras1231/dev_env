scriptencoding utf-8
set encoding=utf-8

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins

" Visual {{{
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
" }}}

" Langs {{{
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'vim-erlang/vim-erlang-runtime', { 'for': 'erlang' }
Plug 'othree/yajs.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'freitass/todo.txt-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'flowtype/vim-flow'
" }}}

" Integration {{{
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rvm', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
" }}}

" Tools {{{
Plug 'terryma/vim-expand-region'
Plug 'kien/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'tpope/vim-fugitive'
Plug 'jgdavey/tslime.vim'

Plug 'tpope/vim-endwise'
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim', { 'on': 'Ag' }

Plug 'Shougo/vimproc.vim', { 'on': 'Dictionary' }
Plug 'itchyny/dictionary.vim', { 'on': 'Dictionary' }

Plug 'embear/vim-localvimrc'
"}}}
"
" All of your Plugs must be added before the following line
call plug#end()
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
