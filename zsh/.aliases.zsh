#Terminal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias q='exit'
alias k='clear'
alias path='echo $PATH | tr : "\n"'
alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -lahG'

# Git
alias ga='git add'
alias gc='git commit'
alias gap='git add -p'
alias gco='git checkout'
alias gs='git status'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"

#Files
alias vimrc='nvim ~/.vimrc'
alias tmuxconf='nvim ~/.tmux.conf'
alias zrc='nvim ~/.zshrc'
alias plug='nvim ~/.vim/plugin_list.vim'
alias dotfiles='nvim ~/.dotfiles'
alias reload='source ~/.zshrc'

function mkdg () { mkdir "$1" && cd "$1" && git init; }

if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

