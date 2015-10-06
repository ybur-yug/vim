set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'elixir-lang/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"syntax highlighting
colorscheme slate 
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
"file tree
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
    let expl_win_num = bufwinnr(t:expl_buf_num)
    if expl_win_num != -1
      let cur_win_nr = winnr()
      exec expl_win_num . 'wincmd w'
      close
      exec cur_win_nr . 'wincmd w'
      unlet t:expl_buf_num
    else
      unlet t:expl_buf_num
    endif
  else
    exec '1wincmd w'
    Vexplore
    let t:expl_buf_num = bufnr("%")
  endif
endfunction
