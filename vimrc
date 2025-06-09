se nocp

filetype off

call plug#begin('~/.vim/plugged')
if exists(':Plug')
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'fatih/vim-go'
  Plug 'wavded/vim-stylus'
  Plug 'tpope/vim-sleuth'
  Plug 'digitaltoad/vim-jade'
  Plug 'slim-template/vim-slim'
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
  Plug 'groenewege/vim-less'
  Plug 'rizzatti/dash.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'keith/swift.vim'
  " Plug 'junegunn/seoul256.vim'
  Plug 'chr4/nginx.vim'
en
call plug#end()

filetype plugin indent on

so $VIMRUNTIME/macros/matchit.vim

se hid tf lz wmnu pa=./**3
se ru sc nu cc=81
se wh=3 wmw=20 wiw=80 noea so=5 siso=8
se noswf ffs=unix,dos enc=utf-8 fencs=utf-8,cp949,latin1
se ai si noet ts=4 sw=4 sts=0 sr ml mls=3
se is ic scs
se bs=indent,eol,start nf-=octal cb=unnamed
se ttm=100 mouse=a

sy enable

let g:netrw_preview = 1
let g:ctrlp_switch_buffer = '0'
let g:ctrlp_max_files = 1000
" let g:rainbow_active = 1
let g:runfile_by_name = {
\ 'gulpfile.js': '!gulp --gulpfile %',
\ '.vimrc': 'so %',
\ }
let g:runfile_by_type = {
\ 'javascript': '!node %',
\ }

if has('gui_running')
  colo slate
" else
  " colo torte
endif

if has('gui_win32')
  nn <m-space> :simalt ~<cr>
  se noimd imi=1 ims=-1
  se go-=T gfn=Consolas:h13
en

if has('gui_macvim')
  se gfn=Menlo\ Regular:h17
en

nn <c-h> <c-w>h
nn <c-j> <c-w>j
nn <c-k> <c-w>k
nn <c-l> <c-w>l

nn <f2> :w<cr>
ino <f2> <c-o>:w<cr>
nn <f3> :NERDTreeFind<cr>
nn <f4> :q<cr>
nn <f5> :Run<cr>
nn <f6> <c-^>
nn <f7> :mak<cr>
no <f8> @:
nn <f9> :cp<cr>
nn <f10> :cn<cr>
nn <f11> <c-w>_<c-w>\|
nn <f12> :e ~/.vimrc<cr>

nn <leader>w :se wrap!<cr>
nn <leader>t :se paste!<cr>
map <leader>y :w !pbcopy\|\|clip<cr>
nn <leader>p :r !pbpaste\|\|paste<cr>
nm <silent> <leader>d <Plug>DashSearch

no <up> gk
no <down> gj
no 0 ^
vn D "_d
nn Q @q
vn Q :norm @q<cr>

nn <leader>` :ls<cr>
nn <leader>1 1<c-^>
nn <leader>2 2<c-^>
nn <leader>3 3<c-^>
nn <leader>4 4<c-^>
nn <leader>5 5<c-^>
nn <leader>6 6<c-^>
nn <leader>7 7<c-^>
nn <leader>8 8<c-^>
nn <leader>9 9<c-^>
nn <leader>0 10<c-^>

ino <c-]> <c-o>f
ino <c-a> <c-o>^
ino <c-e> <c-o>$
ino <c-b> <left>
ino <c-f> <right>

nn <c-_> :Commentary<cr>
vm <c-_> gcgv
ino <c-_> <c-o>:Commentary<cr>

map gx <plug>(openbrowser-smart-search)
