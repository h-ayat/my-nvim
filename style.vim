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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


let g:gruvbox_contrast_dark = 'hard'


set background=dark
let g:edge_style = 'default'
let g:edge_disable_italic_comment = 1
let g:edge_transparent_background = 0


" Airline settings
let g:airline#extensions#tabline#enabled = 1 " tablike buffers
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#coc#enabled = 1

function! CocExtensionStatus() abort
  return get(g:, 'coc_status', '')
endfunction
let g:airline_section_c = '%f%{CocExtensionStatus()}'


" Highlight symbol under cursor using coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:onedark_color_overrides = {
\ "black": {"gui": "#15181b", "cterm": "235", "cterm16": "0" },
\ "purple": {"gui": "#d74343", "cterm": "12", "cterm16": "2"},
\}

if ! exists('g:colors_name') || g:colors_name !=# 'gruvbox'
    colorscheme gruvbox
endif
set background=dark
"let g:airline_theme='gruvbox'

"colorscheme onedark
let g:airline_theme='onedark'
"set background=dark

let g:rainbow_active = 1

