set nocompatible
set guioptions=
filetype off

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'surround.vim'
Plugin 'FuzzyFinder'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'mbbill/undotree'
Plugin 'Townk/vim-autoclose'
Plugin 'hughbien/md-vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

au BufNewFile,BufRead *.md set ft=md
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

let g:acp_enableAtStartup = 0

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType go setlocal omnifunc=gocomplete#Complete

set shiftwidth=4
set tabstop=4
set expandtab

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400

nnoremap <silent> <leader>fb :FufBuffer<CR>
nnoremap <silent> <leader>ff :FufFile<CR>
nnoremap <silent> <leader>fm :FufMruFile<CR>
nnoremap <silent> <leader>ft :FufTag<CR>
nnoremap <silent> <leader>fc :FufMruCmd<CR>

syntax on
colorscheme django
