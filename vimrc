
"""""""""""""""""""""""""""""""""""""""""""""""变量设定
set number 		"设置行号
set relativenumber
set go =	"隐藏菜单和工具栏
set norelativenumber
set cursorline	"显示光标行
set wrap	"超出窗口换行
set showcmd	"在下方显示当前命令或者按键
set wildmenu	"命令缺省列表
set hlsearch	"查找内容高亮
set incsearch	"边输入边高亮
set ignorecase	"忽略大小写
set smartcase	"智能搜索大小写
set mouse=a	"使得vim可以使用鼠标
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=gb2312
set termencoding=utf-8
set backspace=indent,eol,start
set autoread
set scrolloff=10	"屏幕保持上面有5行或者下面有5行
set pastetoggle=<F2>
set ts=4

"set autoindent
"""""""""""""""""""""""""""""""""""""""""""""""执行命令
"设置光标样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

syntax enable 	"语法高亮使能
syntax on	"语法高亮打开
colorscheme desert "黑色主题
autocmd GUIEnter * simalt ~x "打开时最大化显示

"""""""""""""""""""""""""""""""""""""""""""""""按键映射

"更换光标移动上、下、左、右键
noremap h i
noremap i k
noremap k j
noremap j h
noremap H I
"光标前进到之前的位置
noremap <C-p> <C-i>
"行末、行首、第一行、最后一行
noremap <C-j> 0
noremap <C-l> $
noremap <C-i> gg
noremap <C-k> G

"the cursor moves multiple lines
noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l

"保存
noremap s <nop>
noremap S :w<CR>
noremap q :wq<CR>
noremap ! :q!<CR>

"move the cursor in the input mode;
inoremap <C-j>  <left>
inoremap <C-l>  <right>
inoremap <C-i>  <up>
inoremap <C-k>  <down>

"当前分屏尺寸设置
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"分屏左、右、上、下
map sj :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

"搜索后当前行变成中心点
noremap n nzz
noremap N Nzz
"自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap {} {}<Esc>i<CR><CR><Esc>ka<tab>
inoremap $% ${}<Esc>i
inoremap ' ''<Esc>i
inoremap "" ""<Esc>i
inoremap <> <><Esc>i
inoremap /// /*!<*/<Esc>hi
"/ becomes ///
"inoremap / ///


"新建标签页
map tt :tabe<CR>
map tl :+tabnext<CR>
map tj :-tabnext<CR>

"将当前文件生成html文件
noremap th :%TOhtml<CR>

"redo
noremap U <c-r>
"使vimrc生效
noremap <C-r> <Esc>:source $HOME/.vim/vimrc<CR>

"""""""""""""""""""""""""leader键"""""""""""""""""""""""""
let mapleader=" "
"{} one line
inoremap <LEADER>{ {}<Esc>i

noremap <LEADER><CR> :nohlsearch<CR>
"取消拼写检查
noremap <LEADER>sp :set spell!<CR>

"分屏切换光标
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

"打开vimrc
map <LEADER>rc :e $HOME/.vim/vimrc<CR>

"指定为站控，填补其中内容
noremap <LEADER><LEADER> <Esc>/<++><CR>c4l
inoremap <C-<> <++>
inoremap <C->> <++>
inoremap <LEADER>- -->
"the annotation of single line carrys out and cancels;
noremap <LEADER>/ <C-0>i//<Esc>
noremap <LEADER>// <C-0>xxi  <Esc>$a

"push <Esc> key when mode is insert, action into normal mode and move backwards one
"imap <LEADER><Esc> <Esc>$a


"""""""""""""""""""""""""plugin""""""""""""""""""""""
"大部分插件需要以下几句，含义是使得vim识别不同的文件格式
set nocompatible
filetype off
filetype indent on
filetype plugin on
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 													"管理Vundle自身 

Plugin 'taglist.vim'
Plugin 'a.vim'
Plugin 'winmanager'
Plugin 'iamcco/markdown-preview.nvim'										"markdown实时预览插件
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-scripts/DoxygenToolkit.vim'										"doxygen代码、文件等注释
"Plugin 'vim-scripts/fcitx.vim'												"输入模式切换到正常模式时输入法自动切英文
Plugin 'vim-tags'

Plugin 'grep.vim'
Plugin 'minibufexpl.vim'
Plugin 'vim-scripts/c.vim'
"Plugin 'dense-analysis/ale'												"指出代码错误
Plugin 'majutsushi/tagbar'													"显示函数列表
Plugin 'mbbill/undotree'													"以树型结构列出文件的历史版本，随意切换
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/goyo.vim'
Plugin 'dhruvasagar/vim-table-mode'											"markdown自动补全列表等功能
Plugin 'mhinz/vim-signify'
Plugin 'vim-airline/vim-airline'											"
Plugin 'plasticboy/vim-markdown'

Plugin 'SirVer/ultisnips'													"补全代码块
Plugin 'honza/vim-snippets'													"补全代码块


Plugin 'scrooloose/nerdtree'												"列出文件树
"Plugin 'ycm-core/YouCompleteMe'												"代码补全功能


"以下插件为未使用插件
"Plugin 'lyokha/vim-xkbswitch'	"输入模式切换到正常模式时输入法自动切英文————经过测试，结合fcitx，不好用，改为vim-fcitx

call vundle#end()            
filetype plugin indent on


"taglist:show the function in the file
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
nmap ti :Tlist<CR>

"winManager
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=20
nmap wm :WMToggle<cr>
"a.vim:switch between header file and source file
nnoremap <silent><F12> :A<CR>

"create the function what can auto update the TAGS
function! UpdateCtags()
	    let curdir=getcwd()
	    while !filereadable("./tags")
	        cd ..
	        if getcwd() == "/"
	            break
	        endif
	    endwhile
	    if filewritable("./tags")
	        !ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extras
	        TlistUpdate
	    endif
	    execute ":cd " . curdir
endfunction
nmap tu :call UpdateCtags()<CR>

"vim-tags
set tags=tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
let g:vim_tags_auto_generate = 1

"Doxygen
let g:DoxygenToolkit_briefTag_funcName = "yes"
"let g:DoxygenToolkit_commentType = "C++"
"let
let g:DoxygenToolkit_authorName="lz1987714@163.com"  "作者
let g:DoxygenToolkit_briefTag_pre="@Brief "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns "
"let g:DoxygenToolkit_blockHeader="--------------------"
"let g:DoxygenToolkit_blockFooter="--------------------"
let g:DoxygenToolkit_licenseTag="My own license"   
"let g:doxygen_enhanced_color=1

"ale
"let g:ale_linters = {
"\   'c++': ['clang'],
"\   'c': ['clang'],
"\   'python': ['pylint'],
"\}

"nerdtree
map nt :NERDTreeToggle<CR>

"minibufexpl
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1


""YouCompleteMe
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"noremap gd :YcmComplete GoToDefinition<CR>
"noremap gf :YcmComplete GoToDeclaration<CR>
"noremap g/ :YcmComplete GetDoc<CR>
"noremap gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"ultisnips/vim-snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"

"Vim-xkbswitch
"let g:XkbSwitchEnabled = 1
"let g:XkbSwitchLib = '/usr/lib/libxkbswitch.so'

"astyle
map as :call FormatCode()<CR>
func! FormatCode()
	exec "w"
	if &filetype == 'C' || &filetype == 'h'
		exec "!astyle --style=google %"
	elseif &filetype == 'cpp'
		exec "!astyle --style=google %"        
	return
	endif
endfunc 

"open the configure of vim
"let b:filename=expand('%:p')
"let b:vimfile="/home/joker/.vim/vimrc"
"if b:filename==b:vimfile
"	vsplit 	/home/joker/.vim/leader.vim
"	split	/home/joker/.vim/plugin.vim
"	split	/home/joker/.vim/myVimrc.vim
"endif


