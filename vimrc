" Load Vundle Plugins
set nocompatible              " be iMproved, required

silent! runtime bundle.vim

filetype off                  " required <<========== We can turn it on later


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
autocmd BufEnter * :syntax sync fromstart

let mapleader = ","
let g:mapleader = ","

let g:jsx_ext_required = 1

syntax enable

" speed up syntax highlighting
set ttyfast
set lazyredraw

" Formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set textwidth=80
autocmd FileType ruby setlocal colorcolumn=81
set formatoptions=n

" Display whitespaces
set list listchars=tab:»·,trail:·,nbsp:·

" UI configuration
set title
set encoding=utf-8
set scrolloff=2
set autoindent
set smartindent
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set t_Co=256
colorscheme hybrid
set splitbelow splitright


" Status Line
" path
set statusline=%f
" flags
set statusline+=%m%r%h%w
" encoding
set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}]
" line x of y
set statusline+=\ [line\ %l\/%L\ column\ %c]

" Change colour of statusline in insert mode
hi statusline ctermfg=Black ctermbg=White
au InsertEnter * hi statusline term=reverse ctermfg=42 ctermbg=Black guifg=#3cb371 guibg=Black
au InsertLeave * hi statusline term=reverse ctermfg=Grey ctermbg=Black guifg=Grey  guibg=Black

" Searching options
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Set shell
set shell=$SHELL

" Set sivler searcher as a grep tool
set grepprg=ag\ --nogroup\ --nocolor
let g:grep_cmd_opts = '--line-numbers --noheading'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" CtrlP plugin options
let g:ctrlp_cmd = 'CtrlP :pwd'

" NERDTree plugin options
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "right"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 60 
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1

" AutoClose plugin options
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'} 
let g:AutoCloseProtectedRegions = ["Character"] 

let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules',
      \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\|\.DS_Store',
      \ 'link': 'some_bad_symbolic_links',
      \ }
let g:ctrlp_max_files = 0
let g:ctrlp_extensions = ['ctrlp-filetpe']
let g:ctrlp_follow_symlinks = 1

" Mappings
imap jk <ESC>
imap kj <ESC>

" buffer mappings
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" mapping to switch between last two buffers
nnoremap <leader><leader> <c-^>

" Saving and exit mappings
nmap <leader>q :wqa!<CR>
nmap <leader>sq :q<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>


" Edit vimrc bindings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" splits mappings
nmap <leader>sh <C-w>h
nmap <leader>sj <C-w>j
nmap <leader>sk <C-w>k
nmap <leader>sl <C-w>l
nnoremap <leader>vl :vs<cr>

" NerdTree Mappings
map <C-n> :NERDTreeToggle<CR>

" CtrlP bindings
map <leader>f :CtrlPMixed<cr>
let g:ctrlp_map = '<Leader>f'

" NERDTree plugin key bindings
map <leader>n :NERDTreeToggle .<cr>
map <leader>nf :NERDTreeFind<cr>

" Apply vimrc once it is stored
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %
