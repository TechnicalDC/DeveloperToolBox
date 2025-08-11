colorscheme slate
syntax on

set encoding=utf-8               " File encoding
set number                       " Line numbers
set relativenumber               " Relative line numbers from current cursor position
set nowrap
set noswapfile
set showmatch                    " Show matching brackets
set mouse=a
set tabstop=3
set shiftwidth=3
set expandtab                    " Convert tab to spaces
set autoindent
set ignorecase
set smartcase
set incsearch
set hlsearch
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,full
set splitbelow
set splitright
set laststatus=2                 " Status line always visible

" Set <Space> as leader
let mapleader=" "
let maplocalleader=" "

" ===== NORMAL MODE =====
nnoremap <leader>Y maggVGy`a
nnoremap <leader>s :setlocal spell!<CR>
nnoremap Y y$
nnoremap <BS> ^
nnoremap gb :bnext<CR>
nnoremap gB :bprevious<CR>
nnoremap <Esc> :set nohlsearch<CR>
nnoremap x "_x
nnoremap <leader>rr :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <leader>rw :%s/\s\+$//e<CR>
nnoremap <leader>xx :!chmod +x %<CR>

" Quickfix
nnoremap <leader>qo :copen<CR>
nnoremap <leader>qc :cclose<CR>
nnoremap <leader>qf :cfirst<CR>
nnoremap <leader>ql :clast<CR>
nnoremap <leader>qn :cnext<CR>
nnoremap <leader>qp :cprev<CR>

" Window management
nnoremap <A-=> <C-w>=
nnoremap <A-m> <C-w>|
nnoremap <leader>dt :diffthis<CR>
nnoremap <leader>th <C-w>t<C-w>K
nnoremap <leader>tv <C-w>t<C-w>H

" ===== VISUAL MODE =====
vnoremap < <gv
vnoremap > >gv
vnoremap <leader>d "_d

" ===== INSERT MODE =====
inoremap <C-c> <Esc>

" ===== VISUAL BLOCK MODE =====
xnoremap <leader>p "_dP
