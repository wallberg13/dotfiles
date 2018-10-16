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

" Adicionando o Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

call vundle#end()

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

" Markdown preview

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use
let g:livedown_browser = "firefox"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/Scripts/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_completion = 1 " Fecha o preview depois de completar.
let g:ycm_autoclose_preview_window_after_insertion = 1 " Fecha o preview depois de um insert.
let g:ycm_key_list_stop_completion = ['<Enter>'] " Para de completar com Enter
let g:ycm_auto_trigger=0
let g:ycm_min_num_of_chars_for_completion=99
