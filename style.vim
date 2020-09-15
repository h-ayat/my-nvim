inoremap jk <Esc>

set tabstop=2
set encoding=utf-8                      
syntax enable
set termguicolors
set background=dark
let g:edge_style = 'default'
let g:edge_disable_italic_comment = 1
let g:edge_transparent_background = 0
colorscheme edge
set fileencoding=utf-8
set number relativenumber
set ru
set autowriteall
set iskeyword+=-
set t_Co=256
set shiftwidth=2
set smarttab
set smartindent
set autoindent
set updatetime=300
set timeoutlen=500
set nobackup
set nowritebackup
set hidden
set shortmess+=c
set signcolumn=yes

nnoremap <C-s> :w<CR>


" Airline settings
let g:airline#extensions#tabline#enabled = 1 " tablike buffers
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#coc#enabled = 1
"let airline#extensions#coc#error_symbol = 'E:'
"let airline#extensions#coc#warning_symbol = 'W:'
"let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
"let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
"let g:airline#extensions#ctrlspace#enabled = 1

function! CocExtensionStatus() abort
  return get(g:, 'coc_status', '')
endfunction
let g:airline_section_c = '%f%{CocExtensionStatus()}'


" General configs



" My other config
"execute "set <M-j>=\ej"
"execute "set <M-J>=\eJ"
nnoremap <M-j> :bn<CR>
nnoremap <M-J> :bp<CR>
nnoremap <M-'> :bd<CR>

" Highlight symbol under cursor using coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

set timeoutlen=300

