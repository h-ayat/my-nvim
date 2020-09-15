" fzf config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.7 } }
let g:fzf_preview_window = 'right:40%'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

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
