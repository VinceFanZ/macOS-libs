set nocompatible " 关闭vi兼容模式
set t_Co=256 " 开启终端256色 terminal Color
set showcmd
set foldenable
set foldmethod=manual
set cc=100
set foldmethod=marker
colorscheme gruvbox
set background=dark
set termguicolors 
set laststatus=2 " 总是显示状态栏
set ruler " 显示光标当前位置
set number " 开启行号显示
set cursorline " 高亮显示当前行/列
set cursorcolumn
set hlsearch " 高亮显示搜索结果
set incsearch
set magic
set showmatch
set so=1
syntax enable " 开启语法高亮功能
" syntax on " 允许用指定语法高亮配色方案替换默认方案 自适应不同语言的智能缩进
filetype plugin on
filetype indent on
set autoread
set expandtab " 将制表符扩展为空格
set tabstop=4 " 设置编辑时制表符占用空格数
set shiftwidth=4 " 设置格式化时制表符占用空格数
set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符
" set splitbelow " Open new windows below the current window.
set splitright
" color
" color dracula
set showmatch "  括号成对匹配 简写为set sm
set modifiable
set wildmenu " 增加命令行自动补全操作
set history=9999

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
Plug 'itchyny/lightline.vim'
Plug 'fholgado/minibufexpl.vim'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'https://github.com/tommcdo/vim-lion.git'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'fatih/vim-go', { 'tag': 'v1.17' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

set hidden
let g:racer_cmd = '/Volumes/sd/repos/cargo/bin'
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'
"let g:racer_experimental_completer = 1

" Plugin indentLine settings.
let g:indentLine_char = "┆"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff = 1

" Switch buffer
nmap <C-b>n :bnext<CR>
nmap <C-b>p :bprev<CR>

vmap <C-c> :w !pbcopy<CR><CR>
