
" ==========================
" Plugins
" ==========================
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme gruvbox


" ==========================
" Initial settings
" ==========================
set nocompatible	" be iMproved, required
filetype off		" required
syntax enable               " Enables syntax highlight
set hidden                  " Required to keep multiple buffers open
set nowrap                  " Display long lines as just one line
set fileencoding=utf-8      " The encoding written to file
set pumheight=10            " Makes popup menu smaller
set cmdheight=2             " More space for displaying messages
set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertica splits will automatically be to the right
set t_Co=256                " Suppport 256 colors
set tabstop=4               " Insert 4 spaces for a tab
set number                  " Line numbers
set background=dark         " Background dark theme
set noshowmode              " We don't see thing like --INSERT-- anymore
set nobackup                " recommended by coc
set nowritebackup           " recommended by coc
set expandtab               " Converts tab to spaces
set smarttab                " Make tabbing smarted 
set cursorline              " Enable highlight of the current line
set showtabline=2
set laststatus=0            " Always display the status line
set autoindent              " Good auto indent
set formatoptions-=cro      " Stop newline continution of comments
set clipboard=unnamedplus   " Copy paste between vim and everything else
set conceallevel=0          " Required to use `` in markdown files
set mouse=a                 " Enables mouse
set ruler                   " Shows the cursor positioning always


filetype plugin indent on	"required
highlight ColorColumn ctermbg=0 guibg=lightgrey
set smartcase
set hlsearch
set noerrorbells
set shiftwidth=4

" ==========================
" Remapping
" ==========================
let mapleader=" "
" Remove use of Esc key
inoremap jk <Esc>
inoremap kj <Esc>

" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT+TAB will go back
nnoremap <S-TAB> :bprevious<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>pf :CtrlP<CR>
map <silent> <C-n> :NERDTreeFocus<CR>

" remember: use :checkhealth 

