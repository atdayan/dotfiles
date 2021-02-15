call plug#begin()
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

let mapleader=","

"syntax enable
set incsearch smartcase ignorecase nohlsearch

set nocompatible
set number
set relativenumber
set showcmd
set laststatus=2
set scrolloff=4
set nobackup noswapfile
set autoread
set formatoptions-=o

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes+=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pyc
set wildignore+=*.bak,~*,*.swp,*.o,*.info,*.aux,*.log,*.dvi,*.bbl,*.blg,*.brf,*.cb,*.ind,*.idx,*.ilg,*.inx,*.out,*.toc,*.pyc

" Make sure Vim returns to the same line when you reopen a file.
" " Thanks, Steve Losh
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END


set tabstop=4 shiftwidth=4 expandtab shiftround

nmap Q <Nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fix delay when pressing ESC to exit visual mode:
"set timeoutlen=1000 ttimeoutlen=0
set notimeout
set ttimeout
set ttimeoutlen=10

" recompile suckless programs automatically:
autocmd BufWritePost config.def.h !sudo make clean install
