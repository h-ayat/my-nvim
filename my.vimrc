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


nnoremap <silent> <space>f  :<C-u>call CocAction('format')<cr>
nnoremap <silent> <space>p  :<C-u>call CocActionAsync('showSignatureHelp')<cr>
"
" Nerd tree settings
" map <C-a><C-t> :NERDTreeToggle<CR>
nnoremap <silent> <expr> <C-t> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

let g:NERDTreeWinSize=60
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"map <C-n> :NERDTreeToggle<CR>
" see https://shapeshed.com/vim-netrw/
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Vexplore
    endif
endfunction

let g:NERDTreeGitStatusShowIgnored = 0

" Add your own mapping. For example:
" noremap <silent> <C-E> :call ToggleNetrw()<CR>
"map <C-a><C-t> :Vex<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25


:command YankUp :call writefile(getreg('"', 1, 1), '/tmp/cl.vi') | exec ':!cat /tmp/cl.vi | xclip -selection clipboard'
nnoremap <C-a><C-v> :YankUp<CR><CR>

" General configs
set number relativenumber
set ru
sy enable
set autowriteall

" fzf config

let g:fzf_preview_window = 'right:60%'
"let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
"nnoremap <C-p> :FZF<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-a><C-f> :Ag<Space>
nnoremap <C-b> :Buffers<CR>
let g:fzf_layout = { 'up': '~30%' }

let g:fzf_action = {
  \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" My other config
"execute "set <M-j>=\ej"
"execute "set <M-J>=\eJ"
nnoremap <M-j> :bn<CR>
nnoremap <M-J> :bp<CR>

" Highlight symbol under cursor using coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <space>gs :G<CR>
nmap <space>gh :diffget //3<CR>
nmap <space>gu :diffget //2<CR>
nnoremap <space>h :wincmd h<CR>
nnoremap <space>j :wincmd j<CR>
nnoremap <space>k :wincmd k<CR>
nnoremap <space>l :wincmd l<CR>


