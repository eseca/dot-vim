"" Numbers and  length
set number
set autoindent
set nocompatible
filetype plugin on
filetype indent on
syntax on

"" Color
set t_Co=256

colorscheme molokai
set background=light

"" Easier moving of code blocks
vnoremap < <gv 
vnoremap > >gv 

"" The alternative Esc.
inoremap jj <esc>l

"" Four spaces instead of tab.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

"" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" More natural split opening
set splitbelow
set splitright

"" Basic tab completion
imap <Tab> <C-P>

" Settings for VimClojure
let vimclojure#HighlightBuiltins = 1    " Highlight Clojure's builtins
let vimclojure#ParenRainbow = 1         " Rainbow parentheses'!

" Settings for pydoc plugin
let g:pydoc_open_cmd = 'vsplit' 

" NERDTree side panel
map \\ :NERDTreeToggle<CR>

" Vim 80 column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Two spaces indentation
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype java setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
