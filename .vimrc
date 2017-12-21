" Name: vim config
" Author: waithope gan
" Time:2017.12.21

" Map jj to enter normal mode
imap jj <Esc>

" Map move cursor head/tail/ right/left up/down   
inoremap <C-A> <Home>
inoremap <C-E> <End>   
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-j> <Up>
inoremap <C-k> <Down>

" Splitting map vertical/horizontal/close/switch
nnoremap ,v <C-w>v
nnoremap ,h <C-w>s
nnoremap ,c <C-w>q
nnoremap ,, <C-w><C-w>

"Common command like cut copy paste etc.
"yw: yank the current word includes the trailing whitespace
"yiw: yank the current word exludes the trailing whitespace
"%: jump to the matching { .. } or ( .. ), etc..
"r: replace one character
"Shift+R: replace one character
"~: changes case.
"H: goes to the top of the screen
"M: goes to the middle of the screen
"L: goes to the bottom of the screen
"gg: goes to the first line
"G: goes to the last line
"fx: jump to next occurrence of character x
"tx: jump to before next occurrence of character x
"o : append (open) a new line below the current line
"O : append (open) a new line above the current line
"ea : insert (append) at the end of the word

"No backup file
set nobackup 

" Set colors theme
se t_Co=256
syntax enable
set background=dark
" colorscheme solarized 
colorscheme gruvbox

" Set to auto read when a file is changed from the outside
set autoread

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1

" Bash like keys for the command line
cnoremap <C-A>        <Home>
cnoremap <C-E>        <End>
cnoremap <C-K>        <C-U>

"visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
" vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
" vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>))

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
let g:indentLine_char = '┆' 
let g:indentLine_color_term=242
" Map ctrl+i to IndentLinesToggle 
map <C-i> :IndentLinesToggle<CR>

"Ctrlp show hidden file
let g:ctrlp_show_hidden=1

" Automatically complete parentheses
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap {n {<esc>o}<esc>O
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

" inoremap $1 ()<esc>i
" inoremap $2 []<esc>i
" inoremap $3 {}<esc>i
" inoremap $q ''<esc>i
" inoremap $e ""<esc>i

"Press m to bring up the NERDTree Filesystem Menu.Then you can add, rename,
"and delete files and directories.
" Change the nerdtree's window size
let g:NERDTreeWinSize=20
" Map ctrl+n to turn on/off NerdTree
map <C-n> :NERDTreeToggle<CR>
"

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

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Yggdroot/indentLine'

Plugin 'git://github.com/tpope/vim-commentary.git'

Plugin 'git://github.com/tpope/vim-surround.git'

Plugin 'easymotion/vim-easymotion'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'

Plugin 'morhetz/gruvbox'

Plugin 'kien/ctrlp.vim'

Plugin 'git://git.wincent.com/command-t.git'

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
