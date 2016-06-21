call pathogen#infect()
filetype on
filetype plugin on
filetype plugin indent on

set clipboard=unnamedplus,unnamed,autoselect
set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4

"Uses spaces instead of tab
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set nofoldenable

let mapleader = ","

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap <leader><space> :noh<cr>

" Using space to cycle between parantheses
nnoremap <space> %
vnoremap <space> %

set wrap
set textwidth=119
set formatoptions=qrn1
set colorcolumn=120

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"Height of command bar
set cmdheight=2

" Saves annoying shift key press
nnoremap ; :

" Quick escaping from insert mod
inoremap ,/ <ESC>

" Vertical Split Window and switch to it
nmap <leader>v :vsplit<cr>

" For toggling split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Enable syntax highlighting
if has("syntax")
    syntax on
endif

" Fast save/quit mappings
nmap <leader>q :q!<cr>

" Insert pdb
nmap <leader>db O import ipdb; ipdb.set_trace()<CR>
imap <leader>d import ipdb; ipdb.set_trace()<CR>

" Code Folding
nmap <leader>r zR
nmap <leader>m zM

" Exit Insert mode
nmap ,/ <Esc>

"Access .vimrc 
nmap <silent> <leader>ev :e $MYVIMRC <CR>
nmap <silent> <leader>sv :so $MYVIMRC <CR>

"Autocompletion
nmap <leader><tab> :<C-Space>

" Configure backspace back to normal
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Folding rules {{{
set foldenable                  " enable folding
set foldcolumn=2                " add a fold column
set foldmethod=marker           " detect triple-{ style fold markers
set foldlevelstart=0 " start out with everything unfolded
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                                 " which commands trigger auto-unfold          

set noswapfile

set background=light

" Make sure that Jedi's autocompletition is prevented
autocmd FileType python setlocal completeopt-=preview
