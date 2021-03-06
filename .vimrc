source ~/.vim/plugin/winmove.vim
source ~/.vim/plugin/autonerdtree.vim

filetype plugin indent on  
set rtp+=~/.vim 
set rtp+=~/.vim/bundle/Vundle.vim
set hidden

let mapleader = ','

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'yggdroot/indentline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'pangloss/vim-javascript'
Plugin 'raimondi/delimitmate'
Plugin 'mxw/vim-jsx'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set softtabstop=2
set autoindent
set autowrite
set showmatch

set clipboard=unnamedplus
set number
set wrap
set ignorecase
set smartcase
set hlsearch
set incsearch

syntax on

set mousehide
set nobackup
set noswapfile
set encoding=utf-8

colorscheme OceanicNext

let g:indentLine_char = '|'

let g:airline_theme='luna'

set t_Co=256
set background=dark

" open NerdTree be default
autocmd VimEnter * call StartUp()
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <C-w>w ww
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <leader>c :make<cr>
let g:go_fmt_command = "goimports"     
let g:go_auto_type_info = 1

let b:ale_fixers = ['prettier', 'eslint'] 
let g:ale_completion_enabled = 1
map <leader>f :ALEFix<cr>

let g:ctrl_map = '<C-p>'
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap Q <Nop>

nmap <leader>, :q<cr>
nmap <leader>s :wq<cr>
nmap <leader>. :w<cr>
inoremap df <esc>

" manage buffers
nnoremap <leader>n :bn<cr>
nnoremap <leader>b :bp<cr>
nnoremap <leader>r :bd<cr>

map <silent> <C-h> <Plug>WinMoveLeft
map <silent> <C-j> <Plug>WinMoveDown
map <silent> <C-k> <Plug>WinMoveUp
map <silent> <C-l> <Plug>WinMoveRight

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
nnoremap fo :<C-u>nohlsearch<cr>
