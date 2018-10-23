[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

setopt PROMPT_SUBST
source ~/.dotfiles/zsh/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

# Load gruvbox colours
source /Users/nickbdyer/.vim/plugged/gruvbox/gruvbox_256palette.sh

PROMPT='%F{237}------------------------------------------------------------%f
%F{033}%~\
$(__git_ps1 " (%s)") \
%F{004}%(!.#.»)%f '

# Don't check mail when opening terminal.
unset MAILCHECK

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

cat ~/.ssh/config.d/* > ~/.ssh/config
