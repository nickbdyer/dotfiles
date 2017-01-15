alias up='cd ..'

alias bfile='nvim ~/.bashrc'

alias bpro='nvim ~/.bash_profile'

alias vimrc='nvim ~/.vimrc'

alias tmuxconf='nvim ~/.tmux.conf'

alias path='echo $PATH | tr : "\n"'

alias plug='nvim ~/.vim/plugin_list.vim'

function mkdcd () { mkdir "$1" && cd "$1"; }

function mkdg () { mkdir "$1" && cd "$1" && git init; }

# Don't check mail when opening terminal.
unset MAILCHECK

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
