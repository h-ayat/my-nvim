inoremap jk <Esc>
set tabstop=4

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
set number relativenumber
set ru
sy enable
set autowriteall



" My other config
"execute "set <M-j>=\ej"
"execute "set <M-J>=\eJ"
nnoremap <M-j> :bn<CR>
nnoremap <M-J> :bp<CR>
nnoremap <M-'> :bd<CR>

" Highlight symbol under cursor using coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

