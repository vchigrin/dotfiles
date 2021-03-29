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
" Color scheme.
colo industry
" Use background color from terminal preferences.
hi Normal ctermbg=NONE

set softtabstop=2
" Highlight 100 column as margin
set colorcolumn=100
" Number lines
set number
" Avoid wrapping
set nowrap

" Smart indentation
set smartindent

"Trim trailing whitespace on save
autocmd FileType c,cpp,java,pyhton,js,html autocmd BufWritePre <buffer> :%s/\s\+$//e
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

" Split lines with K button.
nnoremap K i<CR><Esc>

" Workaround for bug with disappearing cursor after vertical split
set guioptions-=L

let g:ycm_confirm_extra_conf = 0

nmap <F3> :NERDTreeToggle %:h<CR>
nmap <F4> :TagbarToggle<CR>
nmap <F6> :make<CR>
nmap <F7> :cn<CR>
nmap <F8> :GFile<CR>

set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hlsearch            " Enable search highlighting

" Always make Unix line endings
set ff=unix
" Save as UTF-8
set fileencoding=utf-8

let g:tagbar_ctags_bin="C:/vchigrin/Tools/ctags58/ctags.exe"

" FSwitch setup
nmap <F5> :FSHere<CR>
au! BufEnter *.cc let b:fswitchdst = 'h'
au! BufEnter *.cpp let b:fswitchdst = 'h'
au! BufEnter *.h let b:fswitchdst = 'cc,cpp'
au! BufEnter *.py setlocal tabstop=4 shiftwidth=4 softtabstop=4
au BufEnter *.py setlocal makeprg=python\ -m\ flake8\ %
" Better indentation for comment lines.
au BufEnter *.py inoremap # X#
" ROS launch files support
au BufEnter *.launch set filetype=xml


" Remove search highlight by Esc key
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" File path completion with Tab.
set wildmode=longest,list,full
" Highlight possible file name completions.
set wildmenu
" Show gVIM window maximized.
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif
