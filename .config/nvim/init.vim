if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/pdoyle/.cache/dein/repos/github.com/Shougo/dein.vim
set tabstop=4
set expandtab
"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG
" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/pdoyle/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('w0rp/ale')
  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('fatih/vim-go')
  call dein#add('morhetz/gruvbox')
  call dein#add('zchee/deoplete-clang')
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif


"call plug#begin('~/.local/share/nvim/plugged')
"let mapleader = ","
"Plug 'vimlab/neojs'
"call plug#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif:

"------------------------------------------------------------------------------
"Look and feel
"------------------------------------------------------------------------------
"show whitespace
set invlist
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"Theme
set t_Co=256
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = "hard"
"set color line
let &colorcolumn=join(range(81,999),",")
"set colorcolumn=81
highlight ColorColumn ctermbg=0
"Status Line improvements set laststatus=2
" line numbering
set nu
"Highlight the current line number
set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey40
"Search highlight colors
hi Search cterm=bold ctermfg=black ctermbg=yellow
"------------------------------------------------------------------------------
"Ale
"------------------------------------------------------------------------------
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\    'python': ['autopep8'],
\    'cpp': ['clang-format'],
\}
