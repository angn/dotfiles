unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

call plug#begin('~/.vim/plugged')
if exists(':Plug')
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'fatih/vim-go'
  Plug 'tpope/vim-sleuth'
  Plug 'isRuslan/vim-es6'
  Plug 'tpope/vim-commentary'
  Plug 'pbrisbin/vim-runfile'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-surround'
  Plug 'luochen1990/rainbow'
  Plug 'ap/vim-css-color'
  Plug 'tpope/vim-endwise'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'tyru/open-browser.vim'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-repeat'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'rizzatti/dash.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'keith/swift.vim'
  Plug 'chr4/nginx.vim'
  Plug 'yegappan/lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  "Plug 'jiangmiao/auto-pairs'
  Plug 'bluz71/vim-mistfly-statusline'
endif
call plug#end()

packadd! matchit

set hidden ttyfast lazyredraw path=./**3
set number relativenumber colorcolumn=81
set winheight=3 winminwidth=20 winwidth=80 noequalalways sidescrolloff=8
set noswapfile fileformats=unix,dos encoding=utf-8 fileencodings=utf-8,cp949,latin1
set autoindent smartindent noexpandtab tabstop=4 shiftwidth=4 softtabstop=0 shiftround
set modeline modelines=3
set incsearch ignorecase smartcase
set clipboard=unnamed
set mouse=a
set noshowmode laststatus=2

let g:netrw_preview = 1

let g:ctrlp_switch_buffer = '0'
let g:ctrlp_max_files = 1000

let g:rainbow_active = 1

let g:runfile_by_name = {
\ 'gulpfile.js': '!gulp --gulpfile %',
\ '.vimrc': 'so %',
\ }

let g:runfile_by_type = {
\ 'javascript': '!node %',
\ }

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

if $TERM_PROGRAM != "Apple_Terminal"
  set termguicolors
endif

colorscheme sorbet

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <f2> :w<cr>
inoremap <f2> <c-o>:w<cr>
nnoremap <f3> :if exists("t:NERDTreeBufName")\|NERDTreeFind\|else\|NERDTreeCWD\|endif<cr>
nnoremap <f4> :q<cr>
nnoremap <f5> :Run<cr>
nnoremap <f6> <c-^>
nnoremap <f7> :mak<cr>
noremap <f8> @:
nnoremap <f9> :cp<cr>
nnoremap <f10> :cn<cr>
nnoremap <f11> <c-w>_<c-w>\|
nnoremap <f12> :e ~/.vimrc<cr>

nnoremap <leader>w :se wrap!<cr>
nnoremap <leader>t :se paste!<cr>
map <leader>y :w !pbcopy\|\|clip<cr>
nnoremap <leader>p :r !pbpaste\|\|paste<cr>
nmap <silent> <leader>d <Plug>DashSearch

noremap <up> gk
noremap <down> gj
noremap 0 ^
vnoremap D "_d
nnoremap Q @q
vnoremap Q :norm @q<cr>

nnoremap <leader>` :ls<cr>
nnoremap <leader>1 1<c-^>
nnoremap <leader>2 2<c-^>
nnoremap <leader>3 3<c-^>
nnoremap <leader>4 4<c-^>
nnoremap <leader>5 5<c-^>
nnoremap <leader>6 6<c-^>
nnoremap <leader>7 7<c-^>
nnoremap <leader>8 8<c-^>
nnoremap <leader>9 9<c-^>
nnoremap <leader>0 10<c-^>

inoremap <c-]> <c-o>f
inoremap <c-a> <c-o>^
inoremap <c-e> <c-o>$
inoremap <c-b> <left>
inoremap <c-f> <right>

nnoremap <c-_> :Commentary<cr>
vmap <c-_> gcgv
inoremap <c-_> <c-o>:Commentary<cr>

map gx <plug>(openbrowser-smart-search)
