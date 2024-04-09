set autoindent
set showmatch
set hlsearch
set incsearch
set mouse=v
set ignorecase
set softtabstop=4
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set cursorline
let g:formatterpath = ['/bin/prettier']
noremap <F3> :Autoformat<CR>
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


let g:webdevicons_enable_nerdtree = 1

call plug#begin(data_dir)
"Plug ̈́'itchyny/lightline'
Plug 'vim-autoformat/vim-autoformat'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
let g:python3_host_prog="/bin/python3.11"
:colorscheme dracula

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
