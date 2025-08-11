colorscheme slate
syntax on

set termguicolors
set noshowmode  " Don't show -- INSERT -- (statusline will handle it)
set background=dark
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

" Default statusline
set statusline=%#StatusLine#\ %f%m%r\ %y%=%l/%L\ :%c\ %p%%

" Define highlights for modes
hi User1 guifg=#000000 guibg=#00ff00 ctermfg=black ctermbg=green   " Normal
hi User2 guifg=#000000 guibg=#ffff00 ctermfg=black ctermbg=yellow  " Insert
hi User3 guifg=#000000 guibg=#ff0000 ctermfg=black ctermbg=red     " Visual

" Function to update statusline colors by mode
function! ModeStatusColor()
  if mode() =~# '\v(n|no|nov|noV|no\^V)'
    exe 'hi StatusLine guifg=#000000 guibg=#00ff00 ctermfg=black ctermbg=green'
  elseif mode() =~# '\v(i|ic|ix)'
    exe 'hi StatusLine guifg=#000000 guibg=#ffff00 ctermfg=black ctermbg=yellow'
  elseif mode() =~# '\v(v|V|)'
    exe 'hi StatusLine guifg=#000000 guibg=#ff0000 ctermfg=black ctermbg=red'
  else
    exe 'hi StatusLine guifg=#000000 guibg=#00ff00 ctermfg=black ctermbg=green'
  endif
endfunction

" Auto-update statusline color when mode changes
augroup StatusLineMode
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter,InsertEnter,InsertLeave * call ModeStatusColor()
augroup END

" Define hacker green colors
hi Normal       guifg=#00ff00 guibg=#000000 ctermfg=green ctermbg=black
hi Comment      guifg=#008800 ctermfg=darkgreen
hi Identifier   guifg=#00ff00 ctermfg=green
hi Statement    guifg=#00ff00 gui=bold ctermfg=green cterm=bold
hi PreProc      guifg=#00ff00 ctermfg=green
hi Type         guifg=#00ff00 gui=bold ctermfg=green cterm=bold
hi Special      guifg=#00ff00 ctermfg=green
hi Constant     guifg=#00ff00 ctermfg=green
hi String       guifg=#00cc00 ctermfg=green
hi Number       guifg=#00ff00 ctermfg=green
hi CursorLine   guibg=#001900 ctermbg=black
hi Visual       guibg=#003300 guifg=#00ff00 ctermfg=green ctermbg=black
hi Search       guibg=#005500 guifg=#00ff00 ctermfg=green ctermbg=black
hi StatusLineNC guifg=#004400 guibg=#000000 ctermfg=darkgreen ctermbg=black

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
