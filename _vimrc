set nocompatible              " be iMproved, required
filetype off                  " required

"set t_ut=
"set t_Co=256
set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

syntax on

set ruler
set laststatus=2
set colorcolumn=120
set wildmenu
set wildmode=list:longest,full
set nobackup

set backspace=2

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

set hlsearch
set incsearch
" set ignorecase
set smartcase

set autoindent
set copyindent
" set cindent

" Disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
autocmd GUIEnter * set vb t_vb=

" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

if !has('nvim')|set viminfo+=n~/.vim/viminfo|endif

" Jenkinsfile VIM syntax highlighting
au BufNewFile,BufRead Jenkinsfile setf groovy

" go
au BufNewFile,BufRead *.go setf go

" yaml
au FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab

"----------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"------------------------------------------------------------------------------
" set leader to ,
let mapleader=","

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>

" ,b display the buffer with the given number
nmap <Leader>b :ls<CR>:b <Space>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>
