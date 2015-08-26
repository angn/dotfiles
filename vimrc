"echo" '
" set -eu
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" echo "pathogen"
" ( cd ~/.vim/autoload && curl -sLO https://tpo.pe/pathogen.vim ) &
" clone_or_pull() {
"   echo "$1"
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
" clone_or_pull https://github.com/tpope/vim-fugitive.git &
" clone_or_pull https://github.com/tpope/vim-surround.git &
" clone_or_pull https://github.com/easymotion/vim-easymotion.git &
" clone_or_pull https://github.com/luochen1990/rainbow.git &
" clone_or_pull https://github.com/ap/vim-css-color.git &
" clone_or_pull https://github.com/gregsexton/gitv.git &
" clone_or_pull https://github.com/tpope/vim-endwise.git &
" clone_or_pull https://github.com/michaeljsmith/vim-indent-object.git &
" clone_or_pull https://github.com/majutsushi/tagbar.git &
" clone_or_pull https://github.com/tyru/open-browser.vim.git &
" clone_or_pull https://github.com/flazz/vim-colorschemes.git &
" clone_or_pull https://github.com/scrooloose/syntastic.git &
" clone_or_pull https://github.com/tpope/vim-repeat.git &
" wait
"' | sed 's/^"//' | bash; exit

sil! exe pathogen#infect()
if exists(':Helptags')
  Helptags
en

se nocp hid lz wmnu pa=./**3
se ru nu cc=81
se wh=3 wmw=20 wiw=80 noea so=1 siso=8
se noswf ffs=unix,dos enc=utf-8 fencs=utf-8,cp949,latin1,ascii
se ai si noet ts=4 sw=4 sts=0 sr ml mls=3
se is ic scs
se bs=indent,eol,start nf-=octal pt=<f9> cb=unnamed
se mouse=a

sy enable

let g:NERDCreateDefaultMappings = 0
let g:netrw_preview = 1
let g:ctrlp_switch_buffer = '0'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:buftabline_show = 1
let g:rainbow_active = 1
let g:runfile_by_name = {
\ 'Gruntfile.js': '!grunt --gruntfile %',
\ }

if has("autocmd")
  filetype plugin indent on
en

if has('gui_win32')
  nn <m-space> :simalt ~<cr>
  se noimd imi=1 ims=-1
  se go-=T gfn=Consolas:h13
  colo slate
en

if &t_Co >= 256
  colo slate
  hi StatusLineNC ctermfg=8 ctermbg=7
  hi TabLine cterm=none ctermfg=0 ctermbg=8
  hi TabLineFill cterm=none ctermfg=0 ctermbg=8
  hi TabLineSel ctermfg=7 ctermbg=2
  hi BufTabLineActive cterm=none ctermfg=7 ctermbg=8
  hi VertSplit ctermfg=8 ctermbg=0
endif

nn <c-h> <c-w>h
nn <c-j> <c-w>j
nn <c-k> <c-w>k
nn <c-l> <c-w>l

vn X "_x
vn P "0P

nn #2 :w<cr>
ino #2 <c-o>:w<cr>
nn #3 :NERDTreeToggle<cr>
nn #4 :bd<cr>
nn #5 :Run<cr>
nn #6 <c-^>
nn #7 :mak<cr>
nn #8 :TagbarToggle<cr>
nn #9 :bp<cr>
nn #0 :bn<cr>

nn ZA :xa<cr>
nn ( :bp<cr>
nn ) :bn<cr>
nn <c-n> :ene<cr>

nn <leader>c <c-w>c
nn <leader>s <c-w>s
nn <leader>v <c-w>v
nn <leader>o <c-w>o
nn <leader>n <c-w>n
nn <leader>- <c-w>_
nn <leader>= <c-w>=

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

ino <c-b> <left>
ino <c-f> <right>

nn Q :CtrlPLine<cr>

map <c-_> <plug>NERDCommenterToggle
im <c-_> <c-o><plug>NERDCommenterToggle

map gx <plug>(openbrowser-smart-search)
