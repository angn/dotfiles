"echo" '
" set -eux
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" ( cd ~/.vim/autoload && curl -sLO https://tpo.pe/pathogen.vim ) &
" clone_or_pull() {
"   local dest=~/.vim/bundle/"`basename "$1" .git`"
"   test -d "$dest" || git clone -q --single-branch --depth=1 "$1" "$dest"
"   ( cd "$dest" && git pull -q --ff-only )
" }
" clone_or_pull https://github.com/scrooloose/nerdtree.git &
" clone_or_pull https://github.com/kien/ctrlp.vim.git &
" clone_or_pull https://github.com/fatih/vim-go.git &
" clone_or_pull https://github.com/wavded/vim-stylus.git &
" clone_or_pull https://github.com/tpope/vim-sleuth.git &
" clone_or_pull https://github.com/digitaltoad/vim-jade.git &
" clone_or_pull https://github.com/slim-template/vim-slim.git &
" clone_or_pull https://github.com/kchmck/vim-coffee-script.git &
" clone_or_pull https://github.com/scrooloose/nerdcommenter.git &
" clone_or_pull https://github.com/pbrisbin/vim-runfile.git &
" clone_or_pull https://github.com/airblade/vim-gitgutter.git &
" clone_or_pull https://github.com/ap/vim-buftabline.git &
" clone_or_pull https://github.com/pbrisbin/vim-runfile.git &
" clone_or_pull https://github.com/tpope/vim-fugitive.git &
" wait
"' | sed 's/^"//' | bash; exit

se nocp hid lz wmnu pa=./**3 bg=dark cc=81
se ru ls=2 wh=3 wmw=20 wiw=80 noea so=1 siso=8
se noswf ffs=unix,dos enc=utf-8 fencs=utf-8,cp949,latin1,ascii
se ai si noet ts=4 sw=4 sts=0 sr ml mls=3
se is ic scs
se bs=indent,eol nf-=octal
se mouse=a

sy enable

let g:netrw_preview = 1
let g:ctrlp_switch_buffer = '0'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:buftabline_numbers = 1

sil! exe pathogen#infect()

if has("autocmd")
  filetype plugin indent on
en

if has('gui_win32')
  nn <m-space> :simalt ~<cr>
  se noimd imi=1 ims=-1
  "so $VIMRUNTIME/delmenu.vim
  se go-=T gfn=Consolas:h11
  "se gfn=NanumGothicCoding:h12:cHANGEUL
  colo slate
en

if &t_Co >= 256
  colo slate
endif

nn <c-h> <c-w>h
nn <c-j> <c-w>j
nn <c-k> <c-w>k
nn <c-l> <c-w>l

nn #1 :bp<cr>
nn #2 :w<cr>
im #2 <c-o><f2>
nn #3 :exe exists(':NERDTreeFind') ? ':NERDTreeFind' : ':Vexplore'<cr>
nn #4 :bd<cr>
nn #5 :Run<cr>
nn #9 :se paste!<cr>
im #9 <c-o><f9>
nn #0 :ls<cr>:b<space>
nn <f11> :bn<cr>

nn <c-_> :call NERDComment("n", "Toggle")<cr>
vn <c-_> :call NERDComment("n", "Toggle")<cr>gv
im <c-_> <c-o><c-_>

nn <leader>v <c-w>v
nn <leader>s <c-w>s

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
