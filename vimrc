
" Javier Rizzo
" 2014

"--------------------------------------------------
"	VUNDLE
"--------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("unix")
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif
if has("win32")
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}

Plugin 'jdonaldson/vaxe'
Plugin 'bling/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/vimwiki'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/badwolf'
Plugin 'tpope/vim-rails'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"--------------------------------------------------
"	PLUGIN CONFIG
"--------------------------------------------------

" NerdTree
noremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Airline
set laststatus=2

"--------------------------------------------------
"	MISC
"--------------------------------------------------

filetype on
syntax on
set nowrap
set tabstop=4
set shiftwidth=4
set nocompatible
filetype plugin on
set backspace=2
set showmatch
set expandtab
set number

" Yank & Put to/from standard clipboard
if has("unix")
    set clipboard=unnamedplus
endif
if has("win32")
    set clipboard=unnamed
endif

"--------------------------------------------------
"	FILETYPE SPECIFIC
"--------------------------------------------------

augroup read_optimized
    autocmd!
    au BufNewFile,BufRead *.txt,*.wiki setlocal wrap lbr
    au BufNewFile,BufRead *.txt,*.wiki noremap j gj
    au BufNewFile,BufRead *.txt,*.wiki noremap k gk
    au BufNewFile,BufRead *.txt,*.wiki noremap $ g$
    au BufNewFile,BufRead *.txt,*.wiki noremap 0 g0
augroup END

augroup filetype_ruby
    autocmd!
    au Filetype ruby setlocal ts=2 sw=2
augroup END

augroup filetype_java
    autocmd!
augroup END

"--------------------------------------------------
"   KEY MAPS
"--------------------------------------------------

let maplocalleader = ","

noremap <space> <c-W>w

nnoremap <C-j> ddp
nnoremap <C-k> dd2kp
inoremap <C-u> <esc>viwUei
nnoremap <C-u> viwUe
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" e<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' e<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
vnoremap <leader>( <esc>`<i(<esc>`>la)<esc>
inoremap jk <esc>l
vnoremap <leader>p "_dP
onoremap p i(
onoremap " i"
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il} :<c-u>normal! F}vi{<cr>
nnoremap <C-o> o<esc>

" Temporal
inoremap <esc> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

"--------------------------------------------------
"	GRAPHIC OPTIONS
"--------------------------------------------------

" Remove GUI in gVIM"
if has('gui_running')
		set go-=m
		set go-=T
		set go-=r
		set go-=L
		set nu
endif

set t_Co=256
colorscheme badwolf

"--------------------------------------------------
