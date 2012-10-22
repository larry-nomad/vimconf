"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" install pathogen first ~/.vim/autoload/pathogen.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin on
filetype indent on
"color blackbeauty
color eclipse 
set mouse=a "打开鼠标响应拖拽
set nocompatible
set nowrap
set nobackup
set noswapfile
set number
set wildmenu "自动补全命令时候使用菜单式匹配列表
set showcmd "显示命令
set foldmethod=marker


" 缩进
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set autoindent

""""""""""""""""""""""""""""""
" maps
""""""""""""""""""""""""""""""
" fix insert mode Ctrl+X and BackSpace problem
 map <C-X> <S-Del>i
 map <BS> d

map <Return> :
map Q :q<Return>
map <C-s> :w<Return>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>

" window resizing
map <F11> 0:vertical resize 70<Return>
map <S-F11> :vertical resize 30<Return>
map <C-F11> <C-w>=

map <F12> :NERDTree<Return>
map <F4> :A<Return>
