[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vimrc='nvim ~/.vimrc'

alias tmuxconf='nvim ~/.tmux.conf'

alias path='echo $PATH | tr : "\n"'

alias plug='nvim ~/.vim/plugin_list.vim'

function mkdg () { mkdir "$1" && cd "$1" && git init; }

cat ~/.ssh/config.d/* > ~/.ssh/config

setopt PROMPT_SUBST
source ~/.dotfiles/zsh/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

PROMPT='%F{237}------------------------------------------------------------%f
%F{033}%~\
$(__git_ps1 " (%s)") \
%F{004}%(!.#.»)%f '
