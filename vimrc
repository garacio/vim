set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'mhinz/vim-signify'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

set foldmethod=indent
set foldlevel=99

syntax on
"set number
set mouse=a
set mousehide

set laststatus=2

augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

set updatetime=100
set showmatch
set autoindent
set history=1000
set cursorline
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set clipboard=unnamed

let g:netrw_liststyle=0         " thin (change to 3 for tree)
let g:netrw_banner=0            " no banner
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically

set backspace=2 " make backspace work like most other apps

color dracula
let g:airline_theme='minimalist'

map <C-n> :NERDTreeToggle<CR>
