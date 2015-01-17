" http://vimdoc.sourceforge.net/htmldoc/options.html

set nocompatible                                 " be iMproved
filetype off                                     " required!
filetype plugin indent on
syntax on

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 Plugin 'scrooloose/nerdtree'
 Plugin 'kien/ctrlp.vim'
 Plugin 'rking/ag.vim'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on

 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

set mouse=a                                      " enable mouse support
set autoread                                     " autmatically read in external file changes
set backspace=indent,eol,start                   " allow backspacing over everything in insert mode
set history=500                                  " keep 100 lines of command line history
set ruler                                        " show the cursor position all the time
set showcmd                                      " display incomplete commands
set cmdheight=1                                  " the commandbar height
set incsearch                                    " do incremental searching
set hlsearch                                     " highlight search terms
set ignorecase                                   " ignore case during searches
set showmatch                                    " show matching bracets when text indicator is over them
set number                                       " turn on line numbering
set noexpandtab                                 " dont use spaces instead of tabs
set tabstop=4                                   " insert 4 spaces whenever the tab key is pressed
set shiftwidth=4                                " set indentation to 2 spaces
set autoindent                                   " start new line at the same indentation level
set nobackup                                     " do not keep backup files, it's 70's style cluttering
set noswapfile                                   " do not write annoying intermediate swap files
set wrap!                                        " turn off word wrapping
set scrolloff=3                                  " Start scrolling before the cursor reaches edge of viewport

" keymapping
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" setting timeout lengths
set timeoutlen=1000
set ttimeoutlen=50

" stop annoying sound on errors
set noerrorbells
set novisualbell

" enable 256 color mode
set t_Co=256

" turn on utf-8 file encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" Show hidden characters
set list
set listchars=tab:--,trail:~,precedes:«,extends:»

" changing leader key to comma
let mapleader = ","

" Simplify searching across multiple files
noremap <leader>/ :Ag!<space>

" ctrl-p settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" open nerdtree
command! NT NERDTree
command! NTF NERDTreeFind

" Aliases (a.k.a. typos)
":map Noh noh
":map W w
":map Wq w
":map wq w
":map qw w
:map Q <Nop>

" if file is already open, switches to it instead of opening duplicate
let g:ctrlp_switch_buffer = 'ETVH'

let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/](\.(git|hg|svn)|node_modules)$',
	\ 'file': '\v(\~$|\.(png|jpg|gif|zip|rar|tar|gz))$'
	\ }
