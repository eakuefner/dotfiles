set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'

call vundle#end()

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Linux\n"
    so ~/.google_vimrc
  endif
  if s:uname == "Darwin\n"
    " make powerline fonts work
    let g:airline_powerline_fonts=1
    set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h12
  endif
endif

syntax on
set nu

colorscheme molokai

" show airline status bar all the time
set laststatus=2

" get rid of toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L

" set tabs to actually do the right thing
set tabstop=8
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" relative number toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

