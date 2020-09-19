syntax on
set termguicolors
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set tabstop=2
set encoding=utf-8                      
set fileencoding=utf-8
set number relativenumber
set ru
set autowriteall
set iskeyword+=-
set shiftwidth=2
set smarttab
set smartindent
set autoindent
set updatetime=300
set timeoutlen=300
set nobackup
set nowritebackup
set hidden
set shortmess+=c
set signcolumn=yes


let g:gruvbox_contrast_dark = 'hard'


"set background=dark
"let g:edge_style = 'default'
"let g:edge_disable_italic_comment = 1
"let g:edge_transparent_background = 0

"colorscheme edge




" Airline settings
let g:airline#extensions#tabline#enabled = 1 " tablike buffers
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'onedark'
let g:airline_theme = 'gruvbox'
"let g:airline_theme = 'deus'
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


" Highlight symbol under cursor using coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

if ! exists('g:colors_name') || g:colors_name !=# 'gruvbox'
    colorscheme gruvbox
endif


"set background = dark
"autocmd vimenter * colorscheme gruvbox
"colorscheme gruvbox

