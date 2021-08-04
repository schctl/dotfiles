"  ________       ___      ___  ___      _____ ______
" |\   ___  \    |\  \    /  /||\  \    |\   _ \  _   \
" \ \  \\ \  \   \ \  \  /  / /\ \  \   \ \  \\\__\ \  \
"  \ \  \\ \  \   \ \  \/  / /  \ \  \   \ \  \\|__| \  \
"   \ \  \\ \  \   \ \    / /    \ \  \   \ \  \    \ \  \
"    \ \__\\ \__\   \ \__/ /      \ \__\   \ \__\    \ \__\
"     \|__| \|__|    \|__|/        \|__|    \|__|     \|__|

set exrc
set number
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/AutoClose'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'yggdroot/indentline'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'skammer/vim-css-color'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme onedark
highlight Normal guibg=None

let g:airline_theme='deus'
let NERDTreeShowHidden=1

let mapleader = " "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MAIN
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
    " Start NERDTree and put the cursor back in the other window.
    autocmd VimEnter * NERDTree | wincmd p
    " Exit Vim if NERDTree is the only window left.
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
augroup END
