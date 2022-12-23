let mapleader=" "

set relativenumber
set rnu
set scrolloff=8
set incsearch
set clipboard=unnamedplus
set smartindent
set wrap! 
set expandtab 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set undofile
"Mappings
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
map <C-s> :w<CR>
nnoremap J mzJ'z
"nmap <leader>pv :Ex<CR>

vmap J :m'>+1<CR>gv=gv
vmap K :m'<-2<CR>gv=gv

" Mappings/Settings for NeoVim only
if has('nvim')
        nnoremap <leader>pv :Ex<CR>
        nnoremap q <C-w>c
end































