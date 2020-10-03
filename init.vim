call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'master'}

Plug 'joshdick/onedark.vim'
Plug 'h-ayat/gruvbox'
Plug 'h-ayat/edge'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'


Plug 'ryanoasis/vim-devicons'
Plug 'stsewd/fzf-checkout.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'frazrepo/vim-rainbow'

Plug 'kshenoy/vim-signature'

Plug 'ocaml/vim-ocaml'
Plug 'jordwalke/vim-reasonml'
call plug#end()




source ~/.config/nvim/BufOnly.vim
source ~/.config/nvim/scala-coc.vim
source ~/.config/nvim/fzf.vim
"source ~/.config/nvim/ocaml.vim
source ~/.config/nvim/leader.vim
source ~/.config/nvim/style.vim

