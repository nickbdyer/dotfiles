call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/roman/golden-ratio.git'
Plug 'https://github.com/guns/vim-clojure-static.git'
Plug 'https://github.com/kien/rainbow_parentheses.vim'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'

"Languages

Plug 'vim-ruby/vim-ruby',        {'for': 'ruby'}
Plug 'rust-lang/rust.vim',       {'for': 'rust'}
Plug 'pangloss/vim-javascript',  {'for': 'javascript'}
Plug 'mxw/vim-jsx',              {'for': 'javascript'}
Plug 'elmcast/elm-vim',          {'for': 'elm'}
Plug 'elixir-lang/vim-elixir',   {'for': 'elixir'}


function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

call plug#end()

