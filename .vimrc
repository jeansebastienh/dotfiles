" Vundle boostrap :
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins :
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mhinz/vim-startify'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tomtom/checksyntax_vim'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

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
set encoding=utf-8
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

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

" NERDTree config
"let NERDTreeMapOpenInTab='<ENTER>'
nnoremap ² :NERDTreeToggle<CR> <bar> :NERDTreeMirror<CR>
nnoremap = :NERDTreeFind<CR>

" CtrlP config
let g:ctrlp_root_markers = ['.git']
set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.zip,*/web/coverage/*

" powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2

" checsyntax
let g:checksyntax#auto_enable_rx = '.'
let mapleader = ","

nnoremap <A-Left> :bp<CR>
nnoremap <A-Right> :bn<CR>

nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==

if &term =~ '^screen'
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

au FileType ruby setl sw=2 sts=2 et
au FileType yml setl sw=2 sts=2 et
