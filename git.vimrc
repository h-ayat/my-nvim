
nnoremap <space>gc :GBranches<CR>
"nnoremap <space>ga :Git fetch --all<CR>
:command! Aall :!git fetch --all
:command! Afetch :!git fetch o `git branch --show-current`
:command! Arebo :!git rebase o/`git branch --show-current`


