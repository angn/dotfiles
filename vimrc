so $VIMRUNTIME/macros/matchit.vim

sil! exe pathogen#infect()
if exists(':Helptags')
  Helptags
en

se nocp hid tf lz wmnu pa=./**3
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
let g:buftabline_show = 1
let g:buftabline_numbers = 2
" let g:rainbow_active = 1
let g:runfile_by_name = {
\ 'Gruntfile.js': '!grunt --gruntfile %',
\ '.vimrc': 'so %',
\ }

if has("autocmd")
  filetype plugin indent on
en

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
nn <f8> :TagbarToggle<cr>
nn <f9> :bp<cr>
nn <f10> :bn<cr>

nn <up> gk
nn <down> gj

nn Q :CtrlPLine %<cr>
nn 0 ^
nn ( :bp<cr>
nn ) :bn<cr>
nn <c-n> :ene<cr>

nn <leader>w :w<cr>
nn <leader>a :wa<cr>
nn <leader>q :qa<cr>
nn <leader>x :xa<cr>
nn <leader>z :sh<cr>
nn <leader>d :bd<cr>
nn <leader>e :NERDTreeFocus<cr>
nn <leader>r :NERDTreeFind<cr>
nn <leader>f <plug>(easymotion-s2)

nn <leader>c <c-w>c
nn <leader>s <c-w>s
nn <leader>v <c-w>v
nn <leader>o <c-w>o
nn <leader>n <c-w>n
nn <leader>- <c-w>_
nn <leader>= <c-w>=

nn <leader>y :sil .w !pbcopy<cr>
vn <leader>y :w !pbcopy<home>sil <cr>
no <leader>p :r !pbpaste<cr>

nn <leader>` <c-^>
nn <leader>[ :bp<cr>
nn <leader>] :bn<cr>
nn <leader>1 :exe 'b'.buftabline#user_buffers()[0]<cr>
nn <leader>2 :exe 'b'.buftabline#user_buffers()[1]<cr>
nn <leader>3 :exe 'b'.buftabline#user_buffers()[2]<cr>
nn <leader>4 :exe 'b'.buftabline#user_buffers()[3]<cr>
nn <leader>5 :exe 'b'.buftabline#user_buffers()[4]<cr>
nn <leader>6 :exe 'b'.buftabline#user_buffers()[5]<cr>
nn <leader>7 :exe 'b'.buftabline#user_buffers()[6]<cr>
nn <leader>8 :exe 'b'.buftabline#user_buffers()[7]<cr>
nn <leader>9 :exe 'b'.buftabline#user_buffers()[8]<cr>
nn <leader>0 :exe 'b'.buftabline#user_buffers()[9]<cr>

ino <c-]> <c-o>f
ino <c-b> <left>
ino <c-f> <right>

nn <c-_> :Commentary<cr>
vm <c-_> gcgv
ino <c-_> <c-o>:Commentary<cr>

map gx <plug>(openbrowser-smart-search)
