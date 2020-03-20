source ~/.vimrc.bundles

"基础配置 begin

"允许鼠标滚动
"set mouse=a
"256配色
set t_Co=256
"行号
set nu
"主题
colorscheme solarized 
"背景
set background=light
"set background=dark
"允许用指定语法高亮配色方案替换默认方案
syntax on
"语法高亮开
syntax enable

"打开文件光标指在上次退出位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"显示状态栏
set laststatus=2
"高亮显示当前行
set cursorline
"高亮显示当前列
set cursorcolumn
"高亮显示搜索结果
set hlsearch
"顶部状态栏打开
let g:airline#extensions#tabline#enabled = 1
"状态栏主题
let g:airline_theme='luna'
"底部的箭头需要powerline的字体
let g:airline_powerline_fonts = 1
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 智能缩进
set smartindent
" {映射成后面的命令
imap { {}<ESC>i<CR><ESC>O
" 不备份
set nobackup
" 改变每行第81个字符底色
set textwidth=80
set colorcolumn=+1,+41
" 
set smarttab
" 基于缩进进行代码折叠(zc折叠，zo打开折叠)
set foldmethod=indent
" 启动 vim 时关闭折叠代码
set nofoldenable
"符号索引
set tags=./tags;,tags "分号表示上层递归找tags
" 退格符设置，more powerful backspacing
set backspace=2
" 解决按<Esc>进入normal模式延时的问题
set timeout
set ttimeout
set timeoutlen=500 "两个key的map键按下超过timeoutlen毫秒算结束
set ttimeoutlen=0

" gutentags ctags增量自动索引
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
" 只有拥有这些目录才会增量在'~/.cache/tags'里增加tags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" vimcdoc设置
set helplang=cn
set encoding=utf-8
set fileencoding=utf-8

" ALE配置
" let g:ale_linters_explicit = 1
" let g:ale_sign_column_always = 1

let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
" 错误信息显示
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" 只有退出插入模式才检测
" let g:ale_lint_on_text_changed = 'nerver'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
" 打开文件时不做语法检查
let g:ale_lint_on_enter = 0
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" 错误图标
let g:ale_sign_error = '😂'
let g:ale_sign_warning = '😅'
let g:ale_linters = {
    \'go': ['golint', 'go vet', 'go build'],
\}
" 普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)

" Leaderf 配置
" 模糊查找目录下的文件
nnoremap <leader><leader>fi :LeaderfFile<Space> 
" 模糊匹配当前文件的行
nnoremap <leader><leader>l :LeaderfLine<CR> 
" 模糊匹配当前文件的函数，可用于列出所有函数
nnoremap <leader><leader>fu :LeaderfFunctionAll<CR> 

"Ack 配置
let g:ackhighlight = 1
"默认不跳到第一个匹配结果里
cnoreabbrev Ack Ack!
cnoreabbrev AckFile AckFile!
"映射
nnoremap <Leader>aw :Ack!<Space>
nnoremap <Leader>af :AckFile!<Space>

"AsyncRun 配置
let g:asyncrun_open = 10 "quickfix窗口大小
nnoremap <Leader>r :AsyncRun<Space>
nnoremap <Leader>s :AsyncStop<CR>

" 以下4个是必须的
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" vim 自身命令行模式智能补全
set wildmenu
" 解决vim最多只能复制50行的问题
set viminfo='1000,<500
"vim内置插件 matchit 稍微智能一点的括号匹配
runtime macros/matchit.vim

"基础配置 end 

