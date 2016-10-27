"autocmd!

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'https://github.com/kien/ctrlp.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/syntastic'
Bundle 'marijnh/tern_for_vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "vim-airline/vim-airline"
Bundle "vim-airline/vim-airline-themes"
Bundle "scrooloose/nerdtree"
Bundle "milkypostman/vim-togglelist"
Bundle "Valloric/YouCompleteMe"
Bundle "tpope/vim-fugitive"
Bundle "guns/vim-clojure-static"
Bundle "pmsorhaindo/syntastic-local-eslint.vim"
Bundle "fatih/vim-go"

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ 
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

set ft=javascript

let g:tern_map_keys=1
let g:tern_show_argument_hints='no'
let g:tern_map_prefix="<leader>"
set completeopt-=preview
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wombat'


" go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)

" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set nocompatible
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
" perf stuff
:set lazyredraw
:set ttyfast
:set synmaxcol=200
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
set cmdheight=1
set switchbuf=useopen
set showtabline=4
set winwidth=79
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
set list
set listchars=tab:⋅\ ,extends:#,trail:⋅,nbsp:⋅
" Enable highlighting for syntax
syntax on

filetype plugin indent on

set wildignore+=*.png,*.jpg,*.gif,build/*,node_modules/*,environments/*,touch/*,*.ttf,bower_components/*,app/bower_components/*,app-tests/*,architect/*,*/node_modules/*,*/architect/*,*/app/bower_components/*,*/bower_components/*,*/touch/*,*/environments/*,*/build/*

" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
let mapleader=","
" Fix slow O inserts
:set timeout timeoutlen=1000 ttimeoutlen=100
" Normally, Vim messes with iskeyword when you open a shell file. This can
" leak out, polluting other file types even after a 'set ft=' change. This
" variable prevents the iskeyword change so it can't hurt anyone.
let g:sh_noisk=1
" Modelines (comments that set vim options on a per-file basis)
set modeline
set modelines=3
" Turn folding off for real, hopefully
set foldmethod=manual
set nofoldenable
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map={ 'mode': 'active',
            \ 'active_filetypes': [],
            \ 'passive_filetypes': ['html'] }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  autocmd FileType text setlocal textwidth=78
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  autocmd! BufRead,BufNewFile *.sass setfiletype sass 
augroup END
" JavaScript stuff
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre *.clj,*.js :call <SID>StripTrailingWhitespaces()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set t_Co=256 
:set background=dark
colorscheme nazca

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>y "*y
nnoremap <leader>vb :grep! "\b<c-r><c-w>\b"<cr>:cw<cr><cr>
nnoremap <leader>vv :grep! -Q '<c-r><c-w>'<cr>:cw<cr><cr>

nnoremap <leader>c :nohls<cr>

command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <leader>vf :Ag<SPACE>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

imap <c-c> <esc>

nnoremap <leader><leader> <c-^>
nnoremap <leader>s :call OpenSplit()<cr>

function! OpenSplit()
  normal! v
endfunction
" Align selected lines
vnoremap <leader>ib :!align<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%

map <leader>n :bn<cr>

map <leader>gc :GoCallees <cr>
map <leader>gcs :GoCallers <cr>
map <leader>gcp :GoChannelPeers <cr>
map <leader>gd :GoDescribe <cr>
map <leader>gi :GoImplements<cr>
vmap <leader>gfv :GoFreevars<cr>
map <leader>gr :GoReferrers<cr>
map <leader>gwe :GoWhicherrs<cr>
map <leader>gb :Gblame<cr>
map <leader>gl :Glog<cr>
map <leader>f :CtrlP<cr>
map <leader>F :CtrlPMRU<cr>
map <leader>t :NERDTreeToggle<CR>
map <leader>T :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""
" DISABLE ARROW KEYS 
""""""""""""""""""""""""""""""""""
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

inoremap <Nul> <C-x><C-o>
vnoremap . :normal .<CR>
imap <C-b> <CR><Esc>O

vmap <C-c> "+y
nnoremap <leader>w :w<cr>

set encoding=utf-8

