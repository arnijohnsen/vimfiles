" Enable pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Enable powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set rtp+=~/.local/lib/python2.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
set background=dark
colorscheme gruvbox

" General settings
set backspace=2         " backspace in insert mode works like normal editor
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set scrolloff=4
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" Foldcolumn and save folds
"set foldcolumn=1
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

"Highlight lines longer than 80 chars
2mat ErrorMsg '\%81v.'

" Use r filetype for .R files
au BufNewFile,BufRead *.R setlocal ft=r
autocmd FileType r set commentstring=#\ %s

" Tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
au FileType r setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Navigation shortcuts
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j

" Shortcut to remove trailing whitespace or add hyphens
function! FillLine( str )
    let reps = (80 - col("$")) / len(a:str)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
    endif
endfunction
nnoremap <Leader>rfl :call FillLine('-')<CR>
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
