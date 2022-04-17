call plug#begin()
  Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'neoclide/coc.nvim', {'branch': 'master'}
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
  Plug 'mhinz/vim-mix-format'
call plug#end()

syntax enable
set background=light
colorscheme solarized

set number
set ignorecase
set smartcase
set nocompatible
set expandtab
set tabstop=2
set ruler
set smartindent
set shiftwidth=2
set backspace=indent,eol,start
set autoindent

nnoremap <Leader>f <cmd>Files<CR>

" >> Easily move between buffers
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

let g:mix_format_on_save = 1

