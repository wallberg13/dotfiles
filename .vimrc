"colorscheme blue"

set shiftwidth=4
set tabstop=4
"set hlsearch
set ignorecase
set noexpandtab
set smarttab
syntax on
" Esquema de cor do Sublime - que é muito bom.
highlight WhitespaceEOL ctermbg=red guibg=red
colorscheme sublimemonokai
let g:sublimemonokai_term_italic = 1
set t_Co=256
set smartindent
set autoindent
set textwidth=80
set autowrite
set ruler
set hidden
set incsearch
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

"let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
"let g:DoxygenToolkit_paramTag_pre="@Param "
"let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Wall Berg Morais"
"let g:DoxygenToolkit_licenseTag="GPLv3   <-- !!! Does not end with \<enter>"
"
"Powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

