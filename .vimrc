set number
set columns=180
set lines=60
set expandtab	
set tabstop=4
set shiftwidth=4
set go-=m
set go-=T
set cino=g0
colo molokai

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8

"set guifont=Consolas
set guifont=Source\ Code\ Pro\ 10

set nocompatible
source $VIMRUNTIME/vimrc_example.vim

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
map <F4> :A<CR>
map <F5> :make<CR>

set completeopt=menu,longest

call pathogen#infect()
syntax on
filetype plugin indent on

let g:LookupFile_TagExpr='".filenametags"' 
nmap <F8> :TagbarToggle<CR>
nmap <leader>c :cd %:p:h<CR>

"cscope
if has("cscope")
	set cscopequickfix=s-,c-,d-,i-,t-,e-
	set csto=0
	if filereadable("cscope.out")
		cs add cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
endif


"mutt 
au BufRead /tmp/mutt-* set tw=72



"clang_complete
let g:clang_use_library=1
let g:clang_complete_copen=1
map <F5> :call g:ClangUpdateQuickFix()<CR>


"WinManager
let g:winManagerWindowLayout="NERDTree|TagList,BufExplorer"
let g:winManagerWidth=30
nmap <silent><Leader>wm :WMToggle<CR>



"NERDTREE
let NERDTreeIgnore=['\.o$', '\~$']


" lookupfile setting
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件

"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>
