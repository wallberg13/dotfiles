"colorscheme blue"
set shiftwidth=4
set tabstop=4
"set hlsearch
set ignorecase
set noexpandtab
set smarttab
syntax on
set smartindent
set autoindent
set textwidth=80
set autowrite
set ruler
set hidden
set incsearch
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

set background=dark
set nu

" Plugins
" Adicionando o pathongen
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Configuração do NERDTree - ctrl + n abre o nerdtree
map <C-n> :NERDTreeToggle<CR>

" Maps para as splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Left> 	<C-W><C-Left>
nnoremap <C-Right> 	<C-W><C-Right>
nnoremap <C-Up> 	<C-W><C-Up>
nnoremap <C-Down> 	<C-W><C-Down>


set splitbelow
set splitright
