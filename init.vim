call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'h-ayat/edge'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ryanoasis/vim-devicons'
Plug 'stsewd/fzf-checkout.vim'


call plug#end()

" ------------ Color scheme
syntax enable

" let g:airline_theme = 'edge'

set termguicolors

" for dark version
set background=dark

let g:edge_style = 'default'
let g:edge_disable_italic_comment = 1
let g:edge_transparent_background = 0

colorscheme edge
" ------------ Color scheme end

set ru

set encoding=UTF-8

source ~/.config/nvim/scala-coc.vimrc
source ~/.config/nvim/my.vimrc
source ~/.config/nvim/git.vimrc
