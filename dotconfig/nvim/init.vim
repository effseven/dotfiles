inoremap jk <Esc>

let g:syntastic_python_checkers = ['pylint']
let g:go_version_warning = 0
autocmd BufWritePre *.py execute ':Black'
let g:deoplete#enable_at_startup = 1
if has('nvim')
  set guicursor= 
endif
call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdtree'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/syntastic'
Plug 'gabrielelana/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ambv/black',
call plug#end()
