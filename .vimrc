" Name: vim config
" Author: waithope gan
<<<<<<< HEAD
" Time:2017.12.15
=======
" Time:2017.12.14
>>>>>>> 72bef784514c6687794c47c9e75ca5d5c1bf201b

" Map jj to enter normal mode
imap jj <Esc>

" Map move cursor head/tail/ right/left up/down   
inoremap <C-a> <Home>
inoremap <C-d> <End>   
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-j> <Up>
inoremap <C-k> <Down>

" Set to auto read when a file is changed from the outside
set autoread

" Return to last edsfjlslfit position when opening files!
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     exe "normal! g`\"" |
            \ endif

" Set completion menu
set completeopt=longest,menu

" Show the current position
set ruler

" Highlight cursor line
set cursorline

" Map / to seatch n characters
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Turn on/off  ycm completion
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_enable_diagnostic_signs=1 
let g:ycm_enable_diagnostic_highlighting=1
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_server_keep_logfiles=1
let g:ycm_always_populate_location_list=0

" Set syntax highlight
syntax on

" Enable mouse
set mouse=a

" 1 tab indent 4 spaces
set shiftwidth=4  
set autoindent
set cindent
set number 
set tabstop=4
set expandtab 
set softtabstop=4

" IndentLine
let g:indentLine_char = '¦' 
let g:indentLine_color_term=245
" Map ctrl+i to IndentLinesToggle 
map <C-i> :IndentLinesToggle<CR>

" Automatically complete parentheses
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" Change the nerdtree's window size
let g:NERDTreeWinSize=20
" Map ctrl+n to turn on/off NerdTree
map <C-n> :NERDTreeToggle<CR>

" Split window 
let g:ycm_goto_buffer_command = 'horizontal-split'

map <F2> :YcmCompleter GoToDefinition<CR>
map <F3> :YcmCompleter GoToDeclaration<CR>
map <F4> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Map ctrl+A to select All
map <silent>  <C-A>  gg v G

" Completion in string input
let g:ycm_complete_in_strings = 1
let g:ycm_filetype_blacklist = {
       \ 'tagbar' : 1,
             \ 'nerdtree' : 1,
                   \}
                

" Not popup scratch window
set completeopt-=previe


set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'scrooloose/nerdtree'

Plugin 'Yggdroot/indentLine'

Plugin 'git://github.com/tpope/vim-commentary.git'

Plugin 'git://github.com/tpope/vim-surround.git'

Plugin 'easymotion/vim-easymotion'

Plugin 'Valloric/YouCompleteMe'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
