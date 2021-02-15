call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'joshdick/onedark.vim'
Plug 'h-ayat/gruvbox'
Plug 'h-ayat/edge'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

"Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

Plug 'ryanoasis/vim-devicons'
Plug 'stsewd/fzf-checkout.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'frazrepo/vim-rainbow'
Plug 'kshenoy/vim-signature'

Plug 'chr4/nginx.vim'


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()




source ~/.config/nvim/BufOnly.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/leader.vim
source ~/.config/nvim/style.vim
source ~/.config/nvim/scala-coc.vim
