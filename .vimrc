"set termguicolors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"set background=dark
"let g:gruvbox_contrast_dark = 'hard'
"let g:dracula_italic = 0
"packadd! dracula

call plug#begin()
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

syntax enable
set number
set ignorecase
set smartcase
set showcmd
set hlsearch
filetype indent plugin on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fix delay when pressing ESC to exit visual mode:
set timeoutlen=1000 ttimeoutlen=0

" recompile suckless programs automatically:
autocmd BufWritePost config.def.h !sudo make clean install
