" vim-sublime - A minimal Sublime Text - like vim experience bundle
"               http://github.com/grigio/vim-sublime
" Best view with a 256 color terminal and Powerline fonts
" Updated by Dorian Neto (https://github.com/dorianneto)"

set nocompatible

execute pathogen#infect()

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/NrrwRgn'
Plugin 'colors'
call vundle#end()
filetype plugin indent on

set background=dark
colorscheme molokai
let g:airline_theme='badwolf'
syntax on

" Use :help 'option' to see the documentation for the given option.
set autoindent
set backspace=indent,eol,start
set showmatch
set showmode
set smarttab
set shiftround
set ttimeout
set ttimeoutlen=50
set nois
set laststatus=2
set ruler
set showcmd
set wildmenu
set autoread
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list
set number
set hlsearch
set ignorecase
set smartcase

if has('mouse')
  set mouse=a
endif

set hidden
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac
set completeopt=longest

"
" Plugins config
"

" NERDTree
nnoremap <S-n> :NERDTreeToggle<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
"

" Find
map <C-f> /
" indent / deindent after selecting the text with (⇧ v), (.) to repeat.
vnoremap <Tab> >
vnoremap <S-Tab> <
" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S
" Tabs
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-Left>  :tabprevious<CR>
inoremap <C-Left>  <Esc>:tabprevious<CR>i
nnoremap <C-Right>  :tabnext<CR>
inoremap <C-Right>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i

set ttymouse=xterm2
set mouse=a
set encoding=utf-8
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
inoremap <C-s> <C-o>:w<CR>
nnoremap <C-s> :w<CR>
command! -range=% Paste  <line1>,<line2>!tee /tmp/paste /dev/stdout; curl -s --data-binary @/tmp/paste https://paste.safe.moe/documents | sed -r 's$.*".*".*"(.*)".*$https://paste.safe.moe/raw/\1$g' | xclip -sel clip


" AAAAAAAAAAAAAAAAAA todo highlighting
highlight TodoDone ctermfg=13
highlight TodoNotDone ctermfg=15
highlight TodoStringDone ctermfg=3
highlight TodoStringNotDone ctermfg=2 cterm=bold
