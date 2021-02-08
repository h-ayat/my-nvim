" --------------------------------------------------  Which Key config


" Extra and helper commands and config

" -------------------------------------------------- Khabis Commands section
:command! Kyank :call writefile(getreg('"', 1, 1), '/tmp/cl.vi') | exec ':!cat /tmp/cl.vi | xclip -selection clipboard'
:command! KgitFetchAll :!git fetch --all
:command! KgitFetchCurrent :!git fetch o `git branch --show-current`
:command! KgitRebaseCurrent :!git rebase o/`git branch --show-current`
:command! KvimReload :so $MYVIMRC

vnoremap Y y:Kyank<CR><CR>
inoremap jk <Esc>

nnoremap <M-j> :bn<CR>
nnoremap <M-J> :bp<CR>
nnoremap <M-'> :bd<CR>

let g:mapleader = "\<Space>"
let g:maplocalleader = ','


" --------------------------------------------------  Special Section
" --------------------------------------------------  <leader>
"  ---- GROUPS -----
" g: Git
" w: wincmd
" m: misc
" t: explorer
" c: COC
" l: Registers
" b: Buffers


" ---- Actions ------
"  o: Outline
"  s: Symbols
"  f: Format
"  p: Signature helper
"  e: AG
"  n: BLines
"  r: lines
"  u: explorer
"  z: save
"  d: Kill to the void

nnoremap <silent> <leader>o  :<C-u>CocList outline<cr> " Find symbol of current document
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr> " Search for symbols
nnoremap <silent> <leader>f  :<C-u>call CocAction('format')<cr>
nnoremap <silent> <leader>p  :<C-u>call CocActionAsync('showSignatureHelp')<cr>
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>e :Ag<CR>
nnoremap <leader>n :BLines<CR>
nnoremap <leader>r :Lines<CR>
nnoremap <leader>h :CocCommand explorer --preset floating<CR>
nnoremap <leader>z :w<CR>
nnoremap <leader>D "_d$
nnoremap <leader>d "_dw
vnoremap <leader>d "_d

let g:which_key_map = {
	\ 'o': 'Outline'        ,
	\ 's': 'Symbol search'  ,
	\ 'f': 'Format code'    ,
	\ 'p': 'Signature'      ,
	\ 'e': 'Text search(AG)',
	\ 'n': 'Search in file' ,
	\ 'r': 'Search in open buffers',
	\ 'h': 'Explorer',
	\ 'z': 'Zave!!',
	\ 'd': 'Word/Selection => Void',
	\ 'D': 'End of line',
  \ }

" --------------------------------------------------  Buffers section
" --------------------------------------------------  <leader>b

nnoremap <leader>bb :Buffers<CR>
nnoremap <silent> <leader>bo :BOnly<CR>
nnoremap <silent> <Leader>b[ :vertical resize -15<CR>
nnoremap <silent> <Leader>b] :vertical resize +15<CR>
nnoremap <silent> <Leader>bv :vsplit<CR>
nnoremap <silent> <Leader>bn :bn<CR>
nnoremap <silent> <Leader>bp :bp<CR>
nnoremap <silent> <Leader>bd :bd<CR>
nnoremap <Leader>bD :call delete(expand('%')) <bar> bdelete!<CR>

nnoremap <silent> <leader>br :wincmd r<CR>

let g:which_key_map.b = {
	\ 'name': '+Buffers',
	\ 'b' : 'Search',
	\ 'n' : 'Next',
	\ 'p' : 'Pervious',
	\ 'o' : 'Kill others',
	\ 'r' : 'Rotate',
	\ 'd' : 'Kill this',
	\ '[' : 'Smaller (V)',
	\ ']' : 'Larger (V)',
	\ 'D' : 'Delete buffer and file',
  \ }

" --------------------------------------------------  Registers section
" --------------------------------------------------  <leader>l

nnoremap <leader>ll :reg<CR>
let g:which_key_map.g = {
	\ 'name': '+Reg',
	\ 'l' : 'Registers status',
  \ }


" --------------------------------------------------  Git section
" --------------------------------------------------  <leader>g
nnoremap <leader>gs :G<CR>
nnoremap <leader>gb :GBranches<CR>
nnoremap <leader>gd :Gvdiffsplit<CR>
nnoremap <leader>gv :GV<CR>
nnoremap <leader>gV :GV 
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>ggs :GitGutterStageHunk<CR>
nnoremap <leader>ggu :GitGutterUndoHunk<CR>

nnoremap <leader>gr  :KgitRebaseCurrent
let g:which_key_map.g = {
	\ 'name': '+GIT',
	\ 's' : 'Status page',
	\ 'h' : 'Diff get left',
	\ 'l' : 'Diff get right',
	\ 'b' : 'Branch search',
	\ 'r' : 'Rebase current',
	\ 'd' : 'Diff current',
	\ 'ggs': 'Stage Hunk',
	\ 'ggu': 'Undo Hunk',
	\ 'v': 'Graph with GV',
	\ 'V': 'Graph with GV branches',
	\ 'p': 'Push',
	\ 'm': '3way merge v-split',
	\ 'n': 'Next Conflict',
  \ }

nnoremap <leader>gcl :diffget //3<CR>
nnoremap <leader>gch :diffget //2<CR>
nnoremap <leader>gcv :Gvdiffsplit!<CR>
nnoremap <leader>gcn /<<<<<<<<CR>:noh<CR>
let g:which_key_map.g.c = {
  \ 'name': '+Conflicts',
	\ 'l': 'Diff get right',
	\ 'h': 'Diff get left',
	\ 'v': '3way vertical conflict diff split',
	\ 'n': 'Next conflict',
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
nnoremap <silent> <leader>wh :wincmd h<CR>
nnoremap <silent> <leader>wj :wincmd j<CR>
nnoremap <silent> <leader>wk :wincmd k<CR>
nnoremap <silent> <leader>wl :wincmd l<CR>
nnoremap <silent> <leader>wr :wincmd r<CR>
nnoremap <silent> <leader>wo :BOnly<CR>
nnoremap <silent> <Leader>w[ :vertical resize -15<CR>
nnoremap <silent> <Leader>w] :vertical resize +15<CR>
nnoremap <silent> <Leader>w+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>w- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>wv :vsplit<CR>


let g:which_key_map.w = {
	\ 'name': '+WIN',
	\ 'h': 'Left',
	\ 'l': 'Right',
	\ 'j': 'Down',
	\ 'k': 'Up',
	\ 'o': 'Kill Other',
	\ 'v': 'Vertical split',
	\ 'r': 'Rotate',
	\ '[': 'Vertical reduce size',
	\ ']': 'Vertical increase size',
	\ '+': 'Increase size',
	\ '-': 'Decrease size'
  \ }

" --------------------------------------------------  MISC section
" --------------------------------------------------  <leader>m
nnoremap <leader>my :Kyank<CR><CR>
nnoremap <leader>mr :KvimReload<CR>
nnoremap <leader>mm :Marks<CR>
nnoremap <leader>md :delm!<CR>:delm A-Z0-9<CR>
nnoremap <leader>mh :noh<CR>
nnoremap <leader>mn ]`
nnoremap <leader>mp [`
nnoremap <leader>mk :Maps<CR>
nnoremap <leader>mc :Commands<CR>


let g:which_key_map.m = {
	\ 'name': '+MISC',
	\ 'y': 'YankUp',
	\ 'r': 'Reload vim',
	\ 'm': 'Marks',
	\ 'd': 'Delete all marks',
	\ 'h': 'No Highlight',
	\ 'n': 'Next mark',
	\ 'p': 'Prev mark',
	\ 'c': 'Commands',
	\ 'k': 'Key-bindings',
  \ }

nnoremap <leader>mvv :MarkdownPreview<CR>
nnoremap <leader>mvs :MarkdownPreviewStop<CR>
nnoremap <leader>mvt :MarkdownPreviewToggle<CR>

let g:which_key_map.m.v = {
	\ 'name': '+Markdown',
	\ 'v': 'Start Preview',
	\ 's': 'Stop Preview',
	\ 't': 'Toggle Preview',
	\ }
" --------------------------------------------------  COC-Explorer section
" --------------------------------------------------  <leader>t
"   COC-Explorer
" List all presets
nnoremap <leader>tl :CocList explPresets<CR>
" Use preset argument to open it
nnoremap <leader>td :CocCommand explorer<CR>
nnoremap <leader>ta :CocCommand explorer --preset floating<CR>

nnoremap <leader>tt :CocCommand explorer --preset floatingTop<CR>
nnoremap <leader>ts :CocCommand explorer --preset simplify<CR>

let g:which_key_map.t = {
	\ 'name': '+Explorer',
	\ 'l': 'Preset list',
	\ 'a': 'Tree modal',
	\ 'd': 'Default tree tab',
	\ 't': 'Floating top',
	\ 's': 'Simplified',
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
	\ 'r': 'Rename symbol',
	\ 'n': 'New',
  \ }
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
nmap <leader>cr <Plug>(coc-rename)
nnoremap <leader>cf  <Plug>(coc-format-selected)
nnoremap <leader>cs  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-line)
nmap <leader>cq  <Plug>(coc-fix-current)
nnoremap <leader>cn :<C-u>CocCommand metals.new-scala-file<CR>
nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
nnoremap <leader>cl :<C-u>call CocActionAsync('codeLensAction')<CR>

let g:which_key_map.c.e = {
	\ 'name': '+Extra',
	\ 't': 'Metals TVP',
	\ 'p': 'Metals TVP Packages',
	\ 'c': 'Metals TVP Compile',
	\ 'b': 'Metals TVP Build',
	\ 'f': 'Metals TVP Reveal',
	\ 'n': 'New scala file',
	\ 'e': 'Expand decoration',
	\ 'x': 'Extensions',
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
nnoremap <silent> <leader>cex  :<C-u>CocList extensions<cr>

nnoremap <silent> <leader>cen  :<C-u>CocNext<CR>

nmap <Leader>cee <Plug>(coc-metals-expand-decoration)

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
