" --------------------------------------------------  Which Key config


" Extra and helper commands and config

" -------------------------------------------------- Khabis Commands section
:command! Kyank :call writefile(getreg('"', 1, 1), '/tmp/cl.vi') | exec ':!cat /tmp/cl.vi | xclip -selection clipboard'
:command! KgitFetchAll :!git fetch --all
:command! KgitFetchCurrent :!git fetch o `git branch --show-current`
:command! KgitRebaseCurrent :!git rebase o/`git branch --show-current`
:command! KvimReload :so $MYVIMRC


" --------------------------------------------------  Special Section
" --------------------------------------------------  <leader>
" g: Git
" w: wincmd
" m: misc
" t: explorer
" c: COC
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr> " Find symbol of current document
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr> " Search for symbols
nnoremap <silent> <leader>f  :<C-u>call CocAction('format')<cr>
nnoremap <silent> <leader>p  :<C-u>call CocActionAsync('showSignatureHelp')<cr>
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>e :Ag<CR>
nnoremap <leader>b :Buffers<CR>


let g:which_key_map = {
	\ 'o': 'Outline'        ,
	\ 's': 'Symbol search'  ,
	\ 'f': 'Format code'    ,
	\ 'p': 'Signature'      ,
	\ 'e': 'Text search(AG)',
  \ }


" --------------------------------------------------  Git section
" --------------------------------------------------  <leader>g
nnoremap <leader>gs :G<CR>
nnoremap <leader>gl :diffget //3<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gb :GBranches<CR>

nnoremap <leader>gr  :KgitRebaseCurrent
let g:which_key_map.g = {
	\ 'name': '+GIT',
	\ 's' : 'Status page',
	\ 'h' : 'Diff get left',
	\ 'l' : 'Diff get right',
	\ 'b' : 'Branch search',
	\ 'r' : 'Rebase current',
  \ }


nnoremap <leader>gfa :KgitFetchAll
nnoremap <leader>gfc :KgitFetchCurrent

let g:which_key_map.g.f = {
	\ 'name': '+Fetch',
	\ 'a': 'All',
	\ 'c': 'Current',
  \ }

" --------------------------------------------------  WINcmd section
" --------------------------------------------------  <leader>w
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>
nnoremap <leader>wo :BOnly<CR>

let g:which_key_map.w = {
	\ 'name': '+WIN',
	\ 'h': 'Left',
	\ 'l': 'Right',
	\ 'j': 'Down',
	\ 'k': 'Up',
	\ 'o': 'Kill Other',
  \ }

" --------------------------------------------------  MISC section
" --------------------------------------------------  <leader>m
nnoremap <leader>my :Kyank<CR><CR>
nnoremap <leader>mr :KvimReload<CR>

let g:which_key_map.m = {
	\ 'name': '+MISC',
	\ 'y': 'YankUp',
	\ 'r': 'Reload vim',
  \ }

" --------------------------------------------------  COC-Explorer section
" --------------------------------------------------  <leader>t
"   COC-Explorer
" List all presets
nnoremap <leader>tl :CocList explPresets
" Use preset argument to open it
nnoremap <leader>td :CocCommand explorer<CR>
nnoremap <leader>ta :CocCommand explorer --preset floating<CR>

let g:which_key_map.t = {
	\ 'name': '+Explorer',
	\ 'a': 'Tree modal',
	\ 'd': 'Default tree tab',
  \ }


" --------------------------------------------------  COC-LSP section
" --------------------------------------------------  <leader>c
let g:which_key_map.c = {
	\ 'name': '+COC-LSP',
	\ 'd': 'Diagnostics',
	\ 'c': 'Commands',
	\ 'f': 'Format selected',
	\ 's': 'Action selected',
	\ 'a': 'Code Action',
	\ 'q': 'Quick fix',
	\ 'l': 'Code lens',
	\ 'r': 'Rename symbol'
  \ }
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
nnoremap <leader>cr <Plug>(coc-rename)
nnoremap <leader>cf  <Plug>(coc-format-selected)
nnoremap <leader>cs  <Plug>(coc-codeaction-selected)
nnoremap <leader>ca  <Plug>(coc-codeaction)
nnoremap <leader>cq  <Plug>(coc-fix-current)
nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
nnoremap <leader>cl :<C-u>call CocActionAsync('codeLensAction')<CR>

let g:which_key_map.c.e = {
	\ 'name': '+Extra',
	\ 't': 'Metals TVP',
	\ 'p': 'Metals TVP Packages',
	\ 'c': 'Metals TVP Compile',
	\ 'b': 'Metals TVP Build',
	\ 'f': 'Metals TVP Reveal',
  \ }
" Toggle panel with Tree Views
nnoremap <silent> <leader>cet :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <leader>cep :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <leader>cec :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <leader>ceb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <leader>cef :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>
nnoremap <silent> <leader>cel  :<C-u>CocListResume<CR>
nnoremap <silent> <leader>cee  :<C-u>CocList extensions<cr>


" ======================== Setup which key
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_use_floating_win = 0
let g:which_key_sep = '->'

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler