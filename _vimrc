source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"Map jj to enter normal mode
imap jj <Esc>

"Auto-reload _vimrc file without restarting vim,
"when disable configuration using unmap command
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
    " au BufWritePost _vimrc so $MYVIMRC
augroup END

" set langmenu=en_US
let $LANG='en_US'
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim


" Drag current line/s vertically and auto-indent
vnoremap <a-k> :m-2<CR>gv=gv
vnoremap <a-j> :m'>+<CR>gv=gv
noremap  <a-k> :m-2<CR>
noremap  <a-j> :m+<CR>

" Start new line from any cursor position
inoremap <S-Return> <C-o>o

" nnoremap ,w :write<CR>

" Map w!! to write read-only files in vim
" cnoremap w!! w !sudo tee %

" Quickly open/reload _vimrc
nnoremap ,ev :vsplit $MYVIMRC<CR>

" 1 tab indent 4 spaces set shiftwidth=4
set autoindent
set cindent
set number
set tabstop=4
set expandtab
set softtabstop=4
set relativenumber
set backspace=indent,eol,start
set relativenumber
set nobackup
set nowrap

" Splitting map vertical/horizontal/close/switch
nnoremap ,v <C-w>v<C-w>l
nnoremap ,h <C-w>s<C-w>j
nnoremap ,c <C-w>q
nnoremap ,, <C-w><C-w>
nnoremap ,z <C-w>r

syntax enable

" syntax on
" colorscheme gruvbox

" Enable mouse
set mouse=a

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
" set hlsearch
set nohlsearch
" Makes  search act like search in modern browsers
set incsearch

" Close swapfile
set noswapfile

" Height of the command bar
" set cmdheight=2

" se t_Co=256
" colorscheme gruvbox
" set background=dark

" make tab completion for files/buffers act like bash
set wildmenu
set wildmode=list:full
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
set autoread

"Clear out highlight search
nnoremap ,nh  :noh<cr>

"Clear all trailing Whitespaces
nnoremap caw :%s/\s\+$//<cr>:let @/=''<CR>

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Add a bit extra margin to the left
set foldcolumn=1

" Show the current position
set ruler

" Highlight cursor line
" set cursorline

" Map / to seatch n characters
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" nmap <tab> <Plug>(easymotion-next)
" nmap <s-tab> <Plug>(easymotion-prev)


" IndentLine "Alignment command: n==   means align n rows from this line
" let g:indentLine_char='©¦'
let g:indentLine_color_term=242
" Map ctrl+i to IndentLinesToggle
map <C-i> :IndentLinesToggle<CR>

let g:NERDTreeWinSize=25
let NERDTreeHighlightCursorline=1
set autochdir
map <C-n> :NERDTreeToggle<CR>

" set diffexpr=MyDiff()
" function MyDiff()
"   let opt = '-a --binary '
"   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"   let arg1 = v:fname_in
"   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"   let arg2 = v:fname_new
"     else
"       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"     endif
"   else
"     let cmd = $VIMRUNTIME . '\diff'
"   endif
"   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
"   if exists('l:shxq_sav')
"     let &shellxquote=l:shxq_sav
"   endif
" endfunction

set nocompatible
filetype off

set rtp+=$VIM\vimfiles\bundle\Vundle.vim\

call vundle#begin('$VIM\vimfiles\bundle\')

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

