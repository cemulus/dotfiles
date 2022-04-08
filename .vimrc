" plug-ins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'preservim/nerdtree'
Plug 'dracula/vim'
Plug 'tpope/vim-surround'
call plug#end()


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>


let g:gruvbox_contrast_dark = 'hard'
set bg=dark
colorscheme gruvbox

" move vertically by visual line:
nnoremap j gj
nnoremap k gk

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set showcmd
set nocompatible
syntax on
set shortmess+=I
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap Q <Nop>
set noerrorbells visualbell t_vb=
set mouse+=a
set shiftwidth=4
set showbreak=+++
set softtabstop=4
set tabstop=4
set expandtab
set ruler
set smarttab
set autoindent
set showmatch
set smartindent
