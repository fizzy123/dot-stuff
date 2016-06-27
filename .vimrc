filetype off
execute pathogen#infect()

set ruler
set nu
set hlsearch
set incsearch
syntax enable

set smartindent

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set hidden

"autocmd BufWritePre * :%s/\s\+$//e

" An example for a vimrc file.
"
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last change:  2002 May 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"         for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"       for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.

    " Switch Windows and maximize in one keypress
    "set wmh=0
    "map <C-J> <C-W>j<C-W>_
    "map <C-K> <C-W>k<C-W>_
    "map <C-N> <Esc>:bn<CR>
    "map <C-P> <Esc>:bN<CR>

"    let g:miniBufExplMapWindowNavVim = 1
"    let g:miniBufExplMapWindowNavArrows = 1
"    let g:miniBufExplMapCTabSwitchBufs = 1
"    let g:miniBufExplModSelTarget = 1
    " Use Vim settings, rather then Vi settings (much better!).
    " This must be first, because it changes other options as a side effect.
    set nocompatible

    " allow backspacing over everything in insert mode
    set backspace=indent,eol,start


if has("vms")
  set nobackup      " do not keep a backup file, use versions instead
else
  set nobackup      " keep a backup file
  set backupdir=./.backup,~/.backup,/tmp
endif
set history=50      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch       " do incremental searching
set hlsearch

syntax on

set runtimepath^=~/.vim/bundle/ctrlp.vim

" FOR GO
set foldmethod=syntax
set foldlevelstart=5

let javaScript_fold=5
au FileType javascript call JavaScriptFold()

let g:use_legacy_Fixmyjs = 1

noremap _f :Fixmyjs<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Removes trailing spaces
function! TrimWhiteSpace()
     %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR> 

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
"
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


filetype plugin indent on
