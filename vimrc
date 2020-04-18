
""""""""""""""""""""""""""""""
" Disabled for Vundle install
""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
""""""""""""""""""""""""""""""
" Vundle start
""""""""""""""""""""""""""""""

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
Plugin 'chr4/nginx.vim'
Plugin 'pearofducks/ansible-vim', { 'do': 'cd ./UltiSnips; ./generate.py' }
Plugin 'python-mode/python-mode', { 'branch': 'develop' }
Plugin 'mzlogin/vim-markdown-toc'

call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""
" Vundle end
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.sw.$']
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>
let g:NERDTreeWinSize=42

""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""
nmap <C-e> :Buffers<CR>
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
nmap <C-b> :FZF<CR>

""""""""""""""""""""""""""""""
" Fzf
""""""""""""""""""""""""""""""
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/" --glob "!.terraform/" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
nmap <leader>f :Find <c-r><CR>
nmap <leader>F :Find <c-r>=expand("<cword>")<CR><CR>

command! -bang -nargs=* History call fzf#vim#command_history()
nmap <leader>h :History <CR>

""""""""""""""""""""""""""""""
" Ansible
""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.yml set filetype=yaml.ansible
autocmd BufRead,BufNewFile *.yaml set filetype=yaml.ansible
let g:ansible_unindent_after_newline = 1
let g:ansible_extra_syntaxes = "sh.vim ruby.vim"
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'


""""""""""""""""""""""""""""""
" Pymode
""""""""""""""""""""""""""""""
let g:pymode_breakpoint_bind = '<leader>v'
let g:pymode_options_max_line_length = 150
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 0
autocmd FileType python setlocal softtabstop=4 shiftwidth=4 tabstop=4 expandtab


""""""""""""""""""""""""""""""
" From grml .vimrc
""""""""""""""""""""""""""""""
set backspace=indent,eol,start        " more powerful backspacing
set nobackup          " Don't keep a backup file
" When switching between different buffers you can't use undo without 'set hidden':
set hidden            " Hide buffers when they are abandoned

set wildmenu          " command-line completion operates in an enhanced mode

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

""""""""""""""""""""""""""""""
" My additional customizations
""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99

syntax on
"set number
set mouse=a
set mousehide

set laststatus=2

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

"let g:netrw_liststyle=0         " thin (change to 3 for tree)
"let g:netrw_banner=0            " no banner
"let g:netrw_altv=1              " open files on right
"let g:netrw_preview=1           " open previews vertically

"set backspace=2 " make backspace work like most other apps

color dracula
let g:airline_theme='minimalist'

