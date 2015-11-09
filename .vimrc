" Omni completion; Must be first since changes tab settings.
" Commented out since breaks lot of tab-related settings :(
"filetype plugin on
" Nice syntax highlighting.
syntax on
" Expand tabs to 2 spaces, if any
set tabstop=2
" Expand tabs to spaces
set expandtab
" Use the same number of spaces on indenting operations <<
set shiftwidth=2
" Backspace should work everywhere
set backspace=indent,eol,start
" GVim Color scheme.
colo pablo

set softtabstop=2
" Highlight 80 column as margin
set colorcolumn=80
" Number lines
set number
" Avoid wrapping
set nowrap

" Smart indentation
set smartindent

" Use ninja instead of make
set makeprg=ninja

"Trim trailing whitespace on save
" autocmd FileType c,cpp,java,pyhton,js,html autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

" Allow not saved text in buffer.
set hidden


" Status line = file path, is modified? total lines
set statusline=%F\ %m\ lines\ %L\ line:\ %l\ column:\ %c
" Always show status line
set laststatus=2

" No beeps, no flashes
set visualbell
set t_vb=

" Forbid arrow movement
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Keep selection during block moving
vnoremap > >gv
vnoremap < <gv

" Split lines with K button.
nnoremap K i<CR><Esc>

" Run pathogen plugins
execute pathogen#infect()
cd C:\vchigrin\bro\1\browser\src
