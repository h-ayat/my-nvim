" Extra and helper commands and config

" -------------------------------------------------- Khabis Commands section
:command! Kyank :call writefile(getreg('"', 1, 1), '/tmp/cl.vi') | exec ':!cat /tmp/cl.vi | xclip -selection clipboard'
:command! KgitFetchAll :!git fetch --all
:command! KgitFetchCurrent :!git fetch o `git branch --show-current`
:command! KgitRebaseCurrent :!git rebase o/`git branch --show-current`
:command! KvimReload :so $MYVIMRC


" --------------------------------------------------  Special Section
" --------------------------------------------------  <space>
" g: Git
" w: wincmd
" m: misc
" t: explorer
" c: COC
nnoremap <silent> <space>o  :<C-u>CocList outline<cr> " Find symbol of current document
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr> " Search for symbols
nnoremap <silent> <space>f  :<C-u>call CocAction('format')<cr>
nnoremap <silent> <space>p  :<C-u>call CocActionAsync('showSignatureHelp')<cr>
nnoremap <space><space> :Files<CR>
nnoremap <space>e :Ag<CR>
nnoremap <space>b :Buffers<CR>



" --------------------------------------------------  Git section
" --------------------------------------------------  <space>g
nmap <space>gs :G<CR>
nmap <space>gh :diffget //3<CR>
nmap <space>gu :diffget //2<CR>
nnoremap <space>gc :GBranches<CR>

nnoremap <space>gfa :KgitFetchAll
nnoremap <space>gfc :KgitFetchCurrent
nnoremap <space>gr  :KgitRebaseCurrent

" --------------------------------------------------  WINcmd section
" --------------------------------------------------  <space>w
nnoremap <space>wh :wincmd h<CR>
nnoremap <space>wj :wincmd j<CR>
nnoremap <space>wk :wincmd k<CR>
nnoremap <space>wl :wincmd l<CR>

" --------------------------------------------------  MISC section
" --------------------------------------------------  <space>m
nnoremap <space>my :Kyank<CR><CR>
nnoremap <space>mr :KvimReload<CR>

" --------------------------------------------------  COC-Explorer section
" --------------------------------------------------  <space>t
"   COC-Explorer
" List all presets
nmap <space>tl :CocList explPresets
" Use preset argument to open it
nmap <space>td :CocCommand explorer<CR>
nmap <space>ta :CocCommand explorer --preset floating<CR>



" --------------------------------------------------  FZF and search section
" --------------------------------------------------  <space>a

" --------------------------------------------------  COC-LSP section
" --------------------------------------------------  <space>c
" Show all diagnostics
nnoremap <silent> <space>ca  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>cc  :<C-u>CocList commands<cr>
" Toggle panel with Tree Views
nnoremap <silent> <space>ct :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <space>cp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>co :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>cb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>cf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>
nnoremap <silent> <space>cl  :<C-u>CocListResume<CR>


