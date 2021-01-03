" VIM SYSTEM SETTINTGS

" sanely reset options when re-sourcing .vimrc
set nocompatible

" determine type of file based on name / contents
filetype indent plugin on

" confirm when exiting without saving
set confirm

" better command-line completion
set wildmenu

" redraw only when needed
set lazyredraw

" show matching punctuation [](){}
set showmatch

" partial commands in last line of screen
set showcmd

" highlight searches
set hlsearch

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" search as search is typed in 
set incsearch

" allow backspacing over autoindent, line breaks and start of insert (OSX compatibility)
set backspace=indent,eol,start

" when no file-specific indenting enabled, indent to same level as parent
set autoindent

" display current position on last line of screen
" set ruler

" return to same positioning when reopening file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


" EDITING

" line numbers
set number

" underline current line
" set cursorline

" enable syntax highlighting
syntax on


" SANITY CHECK

" no bells
set noerrorbells
set visualbell
set t_vb=


" INDENTATION

" identation using 4 spaces instead of tabs
set shiftwidth=2
set softtabstop=2
set expandtab


" MAPPINGS

" use C-l (redraw) to turn off highlighting until next search
nnoremap <C-L> :nohl<CR><C-L>


" PLUGINS

call plug#begin('~/.vim/plugged')

" orgmode support
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'

call plug#end()


"PLUGIN SETTINGS

" open all folds to make org files more readable
set foldlevel=99
