" my personal vim config file


" /**************** the original example vimrc's content start ****************/
" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
" /**************** the original example vimrc's content end ****************/



" /********************* set commands start *********************/
" number
set number

" tab is equal to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" set tab to 4 spaces
set expandtab

" set tags for camera project
"set tags=~/suanpan-c/devices/instrument/camera_new/tags

" set foldcolumn
set foldcolumn=3

" set auto mkview and loadview
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" set coding order
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8

" set autoindent
set autoindent

" set dictionary
set dictionary+=/usr/share/dict/words

" syntax folding
set foldmethod=syntax
let javaScript_fold=1             " JavaScript
let g:markdown_folding=1          " markdown

" /********************* set commands end *********************/



" /**************** map ****************/
" normal mode map
nnoremap <F9>     :w<CR>
nnoremap <F10>    :q<CR>
nnoremap <F8>     q:
nnoremap <F7>     :!git diff<CR>
nnoremap <Up>     <C-W>k
nnoremap <Down>   <C-W>j
nnoremap <Left>   <C-W>h
nnoremap <Right>  <C-W>l
nnoremap <End>    A;<Esc>


" insert mode map
imap (    ()<Esc>i
imap {    {}<Esc>i<CR><Esc>O
imap [    []<Esc>i
imap /*   /**/<Esc>hi  <Esc>i

" /**************** map ****************/



" /**************** record macro start ****************/
let @b = 'i**ea**'            " markdown bold
let @i = 'i*ea*'              " markdown italic
let @d = 'i`ea`'              " markdown denote single word like `aa`

let @q = 'i<ib2ea<i/b'    " anki html bold, set 'ab < <>' before using it

let @c = '0wi//l'               " C language comment
let @u = '0wxx'                   " C language uncomment

" /**************** record macro end ****************/



" /**************** functions start ****************/
" Trimwhitespace:  trim trailing write space and empty line
fun! Trimwhitespace()
    let save = winsaveview()  " save the current 'view', which includes the cursor position,
                              " folds, jumps, etc.

    keeppatterns %s/\s\+$//e  " prevents the '\s\+$' pattern from being added to the
                              " search history

    call winrestview(save)    " restore this from the saved variable
endfun

" /**************** functions end ****************/

" /**************** commands start ****************/
" define command Trimwhitespace for function Trimwhitespace
command! Trimwhitespace call Trimwhitespace()

" /**************** commands end ****************/


" /*********************** plugins start ******************************/

" vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" /**************** NERDtree config start ****************/
" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Open the existing NERDtree on each new tab
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDtreeMirror | endif
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" /**************** NERDtree config end ****************/

" /*********************** plugins end ******************************/


" /***************** others start ************************/
" set filetype
filetype plugin on

" abbreviation
ab #b		/****************
ab #e		****************/

" colorscheme desert
colorscheme desert

" /***************** others end ************************/
