call plug#begin()
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal


syntax enable
set number
set ignorecase
set smartcase
set showcmd
set incsearch
set hlsearch
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab

nmap Q <Nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fix delay when pressing ESC to exit visual mode:
set timeoutlen=1000 ttimeoutlen=0

" recompile suckless programs automatically:
autocmd BufWritePost config.def.h !sudo make clean install
