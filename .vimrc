" Vundle boostrap :
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins :
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on
filetype plugin indent on

"" TABULATION 
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set expandtab
" Number of spaces that a <Tab> in the file counts for
set softtabstop=4
" Number of spaces to use for each step of (auto)indent
set shiftwidth=4

" precede each line with its line number
set number


"" INDENTATION
" Disabling auto indent by default
filetype indent off
" Copy indent from current line when starting a new line
set autoindent
" Disables automatic C program indenting
set nocindent
" Do smart autoindenting when starting a new line
set smartindent

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again
set autoread

colorscheme vividchalk
"colorscheme elflord
"set background=dark

scriptencoding utf-8
set history=1000 " Store a ton of history (default is 20)

set hidden " Allow buffer switching without saving
set tabpagemax=15 " Only show 15 tabs
set showmode " Display the current mod

set cursorline " Highlight current line
set showmatch " Show matching brackets/parenthesis


"" SEARCH
set incsearch " Find as you type search
set hlsearch " Highlight search terms
set ignorecase " Case insensitive search
set smartcase " Case sensitive when uc present

"" Completion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"set wildmenu " Show list instead of just completing
"set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
"set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
