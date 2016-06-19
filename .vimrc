set ruler
set nu
set hlsearch
set incsearch
syntax enable

colorscheme desert
set background=dark

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

    " make tab sizes smaller (4 instead of 8) and all spaces...
    set sw=2
    set ic
    :set comments=sl:/**,mb:\ *,elx:\ */
    "colorscheme darkblue
    "color darkblue
    vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

    " Use Vim settings, rather then Vi settings (much better!).
    " This must be first, because it changes other options as a side effect.
    set nocompatible

    " allow backspacing over everything in insert mode
    set backspace=indent,eol,start


set ts=4
set autoindent      " always set autoindenting on
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

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
" map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
"colorscheme darkblue
nmap <space> za
"
"RENUMBER LINES, useful for lists


"" VARUN ADDED
" fix meta-keys which generate <esc>a .. <esc>z
"let c='a'
"while c != 'z'
"    exec "set <M-".toupper(c).">=\e".c
"    exec "imap \e".c." <M-".toupper(c).">"
"    let c = nr2char(1+char2nr(c))
"endw
"

set noswapfile

execute pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim

" FOR GO
set runtimepath+=/opt/go/misc/vim
autocmd FileType go autocmd BufWritePre <buffer> Fmt
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
