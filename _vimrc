"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" install pathogen first ~/.vim/autoload/pathogen.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
let g:config_flake8_dir='/usr/local/bin/'
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
set hlsearch "搜索关键词高亮

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

"map <Return> :
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

" indent_guides 
let g:indent_guides_guide_size      = 1
let g:indent_guides_auto_colors     = 0
let g:indent_guides_start_level     = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=Green ctermbg=lightgray
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=Green ctermbg=gray

inoremap    <c-h>           <left>
inoremap    <c-l>           <right>
inoremap    <c-j>           <c-o>gj
inoremap    <c-k>           <c-o>gk

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>    " 用空格键开关折叠

" DoxygenToolkit快捷键
map         <leader>da      :DoxAuthor<cr>
map         <leader>df      :Dox<cr>
map         <leader>db      :DoxBlock<cr>

"{{{ DoxygenToolkit.vim  文档插件
" :DoxLic        插入License信息
" :DoxAuthor     插入作者信息
" :Dox           插入文档注释
let g:DoxygenToolkit_authorName             = "yan.lu"
let g:DoxygenToolkit_licenseTag             = "BSD\<enter>"
let g:DoxygenToolkit_undocTag               = "DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre           = "@brief\t\t"
let g:DoxygenToolkit_paramTag_pre           = "@param\t\t"
let g:DoxygenToolkit_returnTag              = "@return\t\t"
let g:DoxygenToolkit_throwTag_pre           = "@exception\t\t"
let g:DoxygenToolkit_briefTag_funcName      = "yes"
let g:DoxygenToolkit_maxFunctionProtoLines  = 30 
"}}}

"{{{ syntastic  支持多种语言的语法检查插件
let g:syntastic_check_on_open               = 1
let g:pep8_cmd                              = g:config_flake8_dir . 'pep8'
let g:flake8_cmd                            = g:config_flake8_dir . 'flake8'
let g:pyflakes_cmd                          = g:config_flake8_dir . 'pyflakes'
let g:pylint_cmd                            = g:config_flake8_dir . 'pylint'
let g:syntastic_python_checkers             = ['pylint', 'flake8', 'pep8', 'pyflakes']
let g:syntastic_python_pylint_args          ="-disable-msg=C0103 --max-line-length=120"
let g:syntastic_python_pep8_args            ="--max-line-length=120"
let g:syntastic_python_flake8_args          ="--max-line-length=120 --max-complexity=6"                                                                                             
let g:syntastic_always_populate_loc_list    =1
"}}}

autocmd FileType python         map <buffer> <F7>    :Errors<CR>
