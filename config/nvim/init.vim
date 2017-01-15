if !has('nvim')
  set nocompatible
  set t_ut=
  set ttyfast
endif

set background=dark

" source plugins
so ~/.vim/plugin_list.vim

filetype plugin indent on
syntax on

" soft medium hard
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "medium"
let g:airline_theme='gruvbox'

"Theme
if &t_Co == 256
  colorscheme gruvbox
  set termguicolors
endif

let mapleader = "\<Space>"

set modelines=0
set encoding=utf-8
set history=10000
set number
set hidden
set backspace=indent,eol,start
set scrolloff=3

"Make vim faster
set lazyredraw

"Indent stuff
set smartindent
set smarttab
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set bs=2
set expandtab
autocmd Filetype clojure setlocal ts=2 sw=2 sts=0 expandtab

"stuff to do with wrapping lines
set cursorline
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

"For mistakes
set undodir=~/.vim/undo//
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

set laststatus=2
set noswapfile
set visualbell

"Save all and run last command line instruction
nnoremap <CR> :wa<CR>:!!<CR>

" navigate within wrapped line
noremap j gj
noremap k gk
noremap gj j
noremap gk k

"view trailing whitespace when required
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,trail:~,extends:>,precedes:<

"Splits
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>q <C-w>q
nnoremap <Tab> <C-W><C-W>

"Tab completion in vim cmds
set wildmenu
set wildmode=list:longest,full

"shortcut to edit vimrc - super useful
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Let fzf ignore anything in my gitignore:wq
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" Trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

function! <SID>StripTrailingWhitespaces()
	let _s=@/
	let l = line(".")
	let c = col(".")
  %s/\s\+$//e
	let @/=_s
	call cursor(l, c)
endfunction

" highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
highlight LineLengthError ctermbg=black guibg=black
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

"NERDTree stuff
map <C-n> :NERDTreeToggle<CR>

" keep the cursor in place while joining lines
nnoremap J mzJ`z

"Airline Stuff
let g:airline#extensions#tabline#enabled = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Map FZF to ctrl-p
map <c-p> :execute 'FZF'<CR>

" Disable elm-vim bindings
let g:elm_setup_keybindings =0

" ruby rocket
imap <C-L> <SPACE>=><SPACE>

"clojure
autocmd BufNewFile,BufRead *.cljs set filetype=clojure
autocmd BufNewFile,BufRead *.cljx set filetype=clojure
autocmd BufNewFile,BufRead *.clj set filetype=clojure
autocmd FileType clojure setlocal lispwords+=describe,it,context,around
let vimclojure#FuzzyIndent=1
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"copy paste
set clipboard=unnamed

"jsx
let g:jsx_ext_required = 0
