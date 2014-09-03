silent! execute pathogen#infect()

if has("autocmd")
  filetype plugin indent on
endif

if has('gui-win32')
  nm <m-space> :simalt ~<cr>
  set noimd imi=1 ims=-1
  "source $VIMRUNTIME/delmenu.vim
  set go-=T gfn=Consolas:h11 ru nu
endif

sy on
if &t_Co >= 256
  colo slate
endif
let g:netrw_preview=1
set bg=dark wh=3 wmw=20 wiw=80 noea so=1 siso=8
set ai si noet ts=4 sw=4 sts=0 bs=indent,eol ic is
set noswf ffs=unix,dos enc=utf-8 fencs=utf-8,cp949,latin1,ascii
set pa=.,./*,./*/*,./*/*/* wmnu

im #1 <nop>
im #2 <c-o>:w<cr>
im #3 <nop>
im #4 <nop>
im #5 <nop>
im #6 <nop>
im #7 <nop>
im #8 <nop>
im #9 <nop>
im #0 <esc>:
im <f11> <c-p>
im <f12> <c-n>

nm #2 :w<cr>
function! HandleF3()
  if exists(':NERDTreeFocus')
    :NERDTreeFocus
  else
    :Vexplore
  endif
endfunction
nm #3 :call HandleF3()<cr>
nm #4 :q<cr>
nm #6 :noh<cr>
nm #9 :set paste!<cr>
nm #0 :
nm <f11> :cN<cr>
nm <f12> :cn<cr>

nm = +

nm <c-h> <c-w>h
nm <c-j> <c-w>j
nm <c-k> <c-w>k
nm <c-l> <c-w>l
