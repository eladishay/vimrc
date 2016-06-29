call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Shougo/neocomplete.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'vim-scripts/indentpython.vim'
Plug 'roosta/srcery'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" " Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() . "\<Space>" : "\<Space>"
" Set theme
:color srcery

filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Python PEP8 config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let python_highlight_all=1
syntax on
