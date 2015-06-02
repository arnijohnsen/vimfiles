" Enable pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Enable powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set rtp+=~/.local/lib/python2.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
set background=light
colorscheme solarized

" General settings
set backspace=2         " backspace in insert mode works like normal editor
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set scrolloff=4
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" Foldcolumn and save folds
set foldcolumn=1
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview
au BufNewFile,BufRead *.R setlocal ft=r

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Navigation shortcuts
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j
