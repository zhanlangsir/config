set number
"set columns=168
"set lines=39
set expandtab	
set tabstop=4
set shiftwidth=4
set go-=m
set go-=T
set cino=g0
set t_Co=256
set hls

set nobackup
set nowritebackup
colo molokai 
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8

set guifont=Consolas\ 11
"set guifont=Source\ Code\ Pro\ 10

set nocompatible
"source $VIMRUNTIME/vimrc_example.vim

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
map <F4> :A<CR>
map <F5> :make -j4<CR>
map <C-s> :w<CR>

set completeopt=menu,longest

"call pathogen#infect()
syntax on

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
map <F6> :call g:ClangUpdateQuickFix()<CR>

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

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ctrlp.vim'
Bundle 'a.vim'
Bundle 'Tagbar'
Bundle 'Mark'
Bundle 'genutils'
Bundle 'cscope_macros.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

let g:ctrlp_custom_ignore = {
            \ 'file': '\v\.(so|o)$',
            \ }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_global_ycm_extra_conf='~/.vim/myconf/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
