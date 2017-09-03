" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'Shougo/neocomplete.vim'
Plug 'vim-syntastic/syntastic'
Plug 'spf13/vim-autoclose'
Plug 'Raimondi/delimitMate' 
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'thinca/vim-quickrun'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on           " 语法高亮  
set tabstop=4       " tab = 4 space
set shiftwidth=4    " used for (auto)indent
set expandtab		" used with tabstop
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮  
set guifont=Courier_New:h10:cANSI   " 设置字体  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable
set foldmethod=manual   " 手动折叠  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置当文件被改动时自动载入
set autoread
"共享剪贴板  
set clipboard+=unnamed 
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" 在行和段开始处使用制表符
set smarttab
" 显示行号
"set number
"set relativenumber
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=nih
"set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
" 打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <ESC>
let mapleader = ";"
set pastetoggle =<leader>p
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>d :bd<cr>
nmap <leader>/ :let @/=""<CR>
nmap <leader>W :w !sudo tee % > /dev/null<CR>
" 映射全选 ctrl+a
map <C-d> ggVG
map! <C-d> <Esc>ggVGY
"选中状态下 Ctrl+c 复制
vmap <C-c> "+y
"选中状态下 Ctrl+x 剪切
"vmap <C-x> +d
"普通模式下 Ctrl+d 粘贴
"nmap <C-d> +p
"indent all lines
map <F12> gg=G

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:multi_cursor_use_default_mapping=0
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:go_template_autocreate = 0
nnoremap cn :cnext<CR>
nnoremap cm :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

nnoremap gs :GoDecls<cr>
nnoremap gm :GoDeclsDir<cr>
nnoremap gl :GoAlternate<cr>

"let g:go_fmt_autosave = 0
"let g:go_fmt_command = "goimports" 

"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']

let g:go_metalinter_deadline = "5s"

"autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
"autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
"autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
"autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

"let g:go_def_mode = 'godef'

let g:go_decls_includes = "func, type"

"let g:go_auto_type_info = 1
"set updatetime=1000

"let g:go_auto_sameids = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap wn :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-P> :FZF<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-,>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'c'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" molokai  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:molokai_original = 1
let g:rehash256 = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" theme  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
"set background=dark
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1 "顶部tab栏显示
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme                      = "molokai" "设定主题
"设置切换Buffer快捷键"
nnoremap bn :bn<CR>
nnoremap bm :bp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap wt :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RainbowParentheses
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [RainbowParentheses](plugin)(color)
" 给配对的括号着色
autocmd VimEnter * RainbowParenthesesActivate
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-autoclose  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"to let the " character not be paired if Vim considers the current buffer to be a Vim file.
let g:autoclose_vim_commentmode = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easymotion  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>f <Plug>(easymotion-bd-w)
map <Leader>b <Plug>(easymotion-b)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新文件标题  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 

if !exists("*SetTitle")
    ""定义函数SetTitle，自动插入文件头 
    func SetTitle() 
        "如果文件类型为.sh文件 
        if &filetype == 'sh' 
            call setline(1, "\#!/bin/bash") 
            call append(1, "") 
        endif
        if &filetype == 'cpp'
            call setline(1, "#include<iostream>")
            call append(1, "using namespace std;")
            call append(2, "")
        endif
        if &filetype == 'c'
            call setline(1, "#include<stdio.h>")
            call append(1, "#include<stdlib.h>")
            call append(2, "")
        endif
        "if &filetype == 'py'
        "call setline(1, "#!/usr/bin/env python3")
        "call append(1, "# -*- coding: utf-8 -*-")
        "call append(2, "# Pw @ " . strftime('%Y-%m-%d %T', localtime()))
        "endif
    endfunc 
    autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py exec ":call SetTitle()" 
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endif

if !exists("*HeaderPython")
    ""定义函数HeaderPython，自动插入文件头 
    function HeaderPython()
        call setline(1, "#!/usr/bin/env python3")
        call append(1, "# -*- coding: utf-8 -*-")
        call append(2, "# Pw @ " . strftime('%Y-%m-%d %T', localtime()))
        normal G
        normal o
        normal o
    endfunction
endif

autocmd bufnewfile *.py call HeaderPython()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags & cscope  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":autocmd BufWritePost * call system("ctags -R --exclude=.git")
set tags=/home/gen/common/src/server/tags
"set tags=/home/gen/os-lab1/tags
"set tags=/home/doge/ics2015/tags

cs add ~/Scripts/cscope.out ~/Scripts
"cs add /home/gen/os-lab1/cscope.out /home/gen/os-lab1
"cs add /home/doge/ics2015/cscope.out /home/doge/ics2015

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR> 
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR> 
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim重新打开文件时光标回到上次退出时的位置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dictionary  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Mydict()
    "执行sdcv命令查询单词的含义,返回的值保存在expl变量中
    let expl=system('sdcv -n ' . expand("<cword>"))
    "在每个窗口中执行命令，判断窗口中的文件名是否是dict-tmp，如果是，强制关闭
    windo if expand("%")=="dict-tmp" |q!|endif	
"分割窗口horizonly，宽度为25，新窗口的内容为dict-tmp文件的内容
25sp dict-tmp
"设置查询结果窗口的属性，不缓存，不保留交换文件
setlocal buftype=nofile bufhidden=hide noswapfile
"将expl的内容显示到查询结果窗口
1s/^/\=expl/
"跳转回文本窗口
wincmd p
endfunction
"按键绑定，将调用函数并执行
nmap dc :call Mydict()<CR>
