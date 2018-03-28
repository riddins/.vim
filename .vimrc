" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    !mkdir ~/.vim/autoload ~/.vim/plugged
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Specify a directory for plugins and initialize pluggin system
call plug#begin('~/.vim/plugged')
  Plug 'rhysd/vim-gfm-syntax' , { 'for': 'markdown' }
"  Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
  Plug 'vim-airline/vim-airline'
  Plug 'tomasiser/vim-code-dark'
  Plug 'scrooloose/nerdtree'
call plug#end()

let g:gfm_syntax_emoji_conceal = 1
let g:airline_theme = 'codedark'

colorscheme codedark	" awesome colorscheme
syntax enable       	" enable syntax processing
set tabstop=4       	" number of visual spaces per TAB
set softtabstop=4   	" number of spaces in tab when editing
set expandtab       	" tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set number              " line numbers
