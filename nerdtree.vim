
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
