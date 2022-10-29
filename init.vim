call plug#begin()

Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'cohama/lexima.vim'

call plug#end()
 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
nmap <C-k> <Plug>AirlineSelectPrevTab
nmap <C-l> <Plug>AirlineSelectNextTab

colorscheme hybrid

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set nobackup
set noswapfile
set autoread

set number
set cursorline

set smartindent
set showmatch

set laststatus=2

syntax enable

set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set wrapscan
set hlsearch

