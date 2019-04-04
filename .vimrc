call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'StanAngeloff/php.vim'
Plug 'rayburgemeestre/phpfolding.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'flazz/vim-colorschemes'
Plug 'SirVer/ultisnips' " required for tobyS/vmustache
Plug 'tobyS/vmustache'  " required for tobyS/pdv
Plug 'tobyS/pdv'

call plug#end()

set number
set encoding=utf-8
syntax on
colorscheme adrian
set colorcolumn=85

set tabstop=4
set shiftwidth=4
set expandtab

" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap mm :NERDTreeToggle<CR>


" for lightline
set laststatus=2

let g:lightline = {
  \ 'colorscheme': 'wombat',
\ }

if !has('gui_running')
  set t_Co=256
endif


" phpfolding
 map <F5> <Esc>:EnableFastPHPFolds<Cr>
 map <F6> <Esc>:EnablePHPFolds<Cr>
 map <F7> <Esc>:DisablePHPFolds<Cr>

 let g:DisableAutoPHPFolding = 1

" PHP Coding Standards fixer on save
" autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" pdv
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>


" disable that disgusting bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
