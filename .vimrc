syntax on

" 取消启动画面
"set shortmess=atI

" 设定 帮助文档语言 :help
" Set Vim help to Chinese and utf-8 encoding
if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif	 
"************************************************************************************
"                                       Themes                                       
"************************************************************************************

" set color theme
"colorscheme busybee

set background=dark
" solarized options 

colorscheme lucario


" Configuration section of vundle
filetype off  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"********************************
"        Set Bundle Manager
"********************************

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

"************************************************************************************
"                                       Bundles                                       
"************************************************************************************
Plugin 'L9'
Plugin 'mileszs/ack.vim'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim' 
Plugin 'vim-scripts/xml.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'TimothyYe/vim-tips'
Plugin 'Shougo/neocomplete'
Plugin 'vim-scripts/wildfire.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'ianva/vim-youdao-translater'
Plugin 'elixir-lang/vim-elixir'
Plugin 'matze/vim-move'
Plugin 'winmanager'
Plugin 'bufexplorer.zip'
Plugin 'Valloric/YouCompleteMe'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'itchyny/calendar.vim'
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'asins/vimcdoc'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"************************************************************************************
"                                      Settings                                       
"************************************************************************************

"if ycm_add_preview_to_completeopt = 0 can't work then set cot
set completeopt = "menuone"

call vundle#end()
filetype plugin indent on     " required!
 " End of vundle configuration

let g:airline_theme='light'
 
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2

"For vim-move
let g:move_key_modifier = 'C'

"For ack
let g:ackprg = 'ag --nogroup --nocolor --column'


"For Youdao Translater Plugin
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 


"For Indent Guides Plugin
let g:indent_guides_enable_on_vim_startup = 1

"For SuperTab
let g:SuperTabRetainCompletionType="context"

"For NERDTree
:map <leader>n :NERDTree<CR>  
"let loaded_nerd_tree=1
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree=1
let g:NERDTreeWinSize = 32 
map <leader>f :NERDTreeToggle<CR>

"For vim-easymotion
let g:EasyMotion_leader_key = ","

"For TagBar
map <leader>g :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin' : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"For CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"************************************************************************************
"                                  通用配置                                       
"************************************************************************************
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入
set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠

 
"************************************************************************************
"                                  其他配置                                       
"************************************************************************************

inoremap jj <Esc>

"tabs配置 -> 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"Powerline配置
if has("gui_running")
	“set GUI font type
	set guifont=Source\ Code\ Pro\:h18
      " set guifont=PowerlineSymbols\ for\ Powerline
	set nocompatible
	set t_Co=256
      " let g:Powerline_symbols = 'fancy'
endif
let g:airline_powerline_fonts = 1

" conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set encoding=utf-8  
set nocompatible
set laststatus=2
" 设置文件编码  
set fenc=utf-8 

"set to use clipboard of system
set clipboard=unnamed

" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

"显示行号  
"set number
"Show related row numbers
set relativenumber

"退格键设置
"set backspace=2		"在insert模式下用退格键删除
set backspace=indent,eol,start

"忽略大小写查找
"set ic

" tab宽度  
"set tabstop=2  
"set cindent shiftwidth=2  
"set autoindent shiftwidth=2 

" set 折叠
set foldmethod=indent
" 打开文件默认不折叠
set foldlevelstart=99

"set my leader
let mapleader="\<Space>"
let g:mapleader="\<Space>"

"tabs
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove


"switch window
:map <leader>w <C-W>w

"set zen coding
 let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \  'erb' : {
  \    'extends' : 'html',
  \  },
  \}

"use in  edit
imap <C-A> <C-C><c-p>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" move lines up or down (command - D)
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Tab move lines left or right (c-Ctrl,s-Shift)
nmap    <c-tab>     v>
nmap    <s-tab>     v<
vmap    <c-tab>     >gv
vmap    <s-tab>     <gv

" tab navigation like zsh
:nmap <leader>h :tabprevious<CR>
:nmap <leader>l :tabnext<CR>

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

nmap w- :resize -3<CR>
nmap w= :resize +3<CR>

"markdown hightlight
let g:octopress_rake_executable = '/usr/local/bin/rake'

"scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee :CoffeeCompile watch vert

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"auto completed
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" code search
let g:ackprg = 'ag --nogroup --nocolor --column'

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
