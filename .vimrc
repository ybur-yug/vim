" FIXME if it is your first time with this vimrc then run
" # git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'elixir-lang/vim-elixir'
Plugin 'james9909/stackanswers.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"syntax highlighting
colorscheme monokai 
syntax on
set hlsearch
 
"line numbers
set nu
 
"tabbing
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
 
"backspace key
set backspace=2
 
":e autocomplete settings
set wildmenu
set wildmode=longest:list,full

"format the statusline
set laststatus=2
nmap ,e <C-E>

"NERDTREE
map <C-n> :NERDTreeToggle<CR>
set lazyredraw
