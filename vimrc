se nocp
filetype off
se rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
if exists(':Plugin')
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'kien/ctrlp.vim'
  Plugin 'fatih/vim-go'
  Plugin 'wavded/vim-stylus'
  Plugin 'tpope/vim-sleuth'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'slim-template/vim-slim'
  Plugin 'isRuslan/vim-es6'
  Plugin 'tpope/vim-commentary'
  Plugin 'pbrisbin/vim-runfile'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'tpope/vim-surround'
  Plugin 'luochen1990/rainbow'
  Plugin 'ap/vim-css-color'
  Plugin 'tpope/vim-endwise'
  Plugin 'michaeljsmith/vim-indent-object'
  Plugin 'tyru/open-browser.vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'tpope/vim-repeat'
  Plugin 'nelstrom/vim-visual-star-search'
  Plugin 'groenewege/vim-less'
en
call vundle#end()
filetype plugin indent on

so $VIMRUNTIME/macros/matchit.vim

se hid tf lz wmnu pa=./**3
se ru sc nu cc=81
se wh=3 wmw=20 wiw=80 noea so=5 siso=8
se noswf ffs=unix,dos enc=utf-8 fencs=utf-8,cp949,latin1,ascii
se ai si noet ts=4 sw=4 sts=0 sr ml mls=3
se is ic scs
se bs=indent,eol,start nf-=octal pt=<f9> cb=unnamed
se ttm=100 mouse=a

sy enable

let g:netrw_preview = 1
let g:ctrlp_switch_buffer = '0'
let g:ctrlp_max_files = 1000
let g:ctrlp_max_depth = 3
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" let g:rainbow_active = 1
let g:runfile_by_name = {
\ 'gulpfile.js': '!gulp --gulpfile %',
\ '.vimrc': 'so %',
\ }

if has('gui_running')
  colo slate
else
  colo torte
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

vn X "_x
vn P "0P

nn <f2> :w<cr>
ino <f2> <c-o>:w<cr>
nn <f3> :NERDTreeFocus<cr>
nn <f4> :q<cr>
nn <f5> :Run<cr>
nn <f6> <c-^>
nn <f7> :mak<cr>
nn <f8> :se paste!<cr>
nn <f9> :cp<cr>
nn <f10> :cn<cr>
nn <f11> <nop>
nn <f12> <nop>

nn <up> gk
nn <down> gj
no 0 ^
nn Q :CtrlPLine %<cr>

nn <leader>y :sil .w !pbcopy<cr>
vn <leader>y :w !pbcopy<home>sil <cr>
no <leader>p :r !pbpaste<cr>

nn <leader>` :ls<cr>
nn ( :bp<cr>
nn ) :bn<cr>
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
ino <c-b> <left>
ino <c-f> <right>

nn <c-_> :Commentary<cr>
vm <c-_> gcgv
ino <c-_> <c-o>:Commentary<cr>

map gx <plug>(openbrowser-smart-search)
