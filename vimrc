" cd /usr/share/vim/vim7?/autoload
" curl -sSLO https://tpo.pe/pathogen.vim
" cd ../bundle
" git clone --depth=1 https://github.com/scrooloose/nerdtree.git
" git clone --depth=1 https://github.com/tmhedberg/matchit.git
" git clone --depth=1 https://github.com/kien/ctrlp.vim.git

silent! execute pathogen#infect()

if has("autocmd")
  filetype plugin indent on
endif

if has('gui_win32')
  nm <m-space> :simalt ~<cr>
  set noimd imi=1 ims=-1
  "source $VIMRUNTIME/delmenu.vim
  set go-=T gfn=Consolas:h11
  "set gfn=NanumGothicCoding:h12:cHANGEUL
  colo slate
elseif &t_Co >= 256
  colo slate
endif

sy on
let g:netrw_preview=1
set bg=dark ru wh=3 wmw=20 wiw=80 noea so=1 siso=8
set ai si noet ts=4 sw=4 sts=0 bs=indent,eol ic cc=81 lcs=eol:$,tab:>-,trail:#
set noswf ffs=unix,dos enc=utf-8 fencs=utf-8,cp949,latin1,ascii
set pa=./**3 wmnu is

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
  if exists(':NERDTreeFind')
    :NERDTreeFind
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
