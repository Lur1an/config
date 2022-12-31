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
nnoremap <C-c> <Esc>
vmap J :m'>+1<CR>gv=gv
vmap K :m'<-2<CR>gv=gv
" quickfix
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Mappings/Settings for NeoVim only
if has('nvim')
        nnoremap <leader>pv :Ex<CR>
        nnoremap q <C-w>c
        set signcolumn=no
        set nofoldenable
        set foldmethod=indent
        packadd! doki-theme
        syntax enable
end































