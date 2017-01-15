#!/usr/bin/env bash

#Load bashrc into shell
[[ -f ~/.bashrc ]] && source ~/.bashrc

#Set PATH for Homebrew
export PATH="/usr/local/bin:$PATH"

#Set PATH for MongoDB
export PATH="/data/db:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#Set PATH for packer
export PATH="/usr/local/packer:$PATH"

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='modern'

# Sets up kiex
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source $BASH_IT/bash_it.sh

# Load ChRuby
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.3.1
source /usr/local/opt/chruby/share/chruby/auto.sh

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load gruvbox colours
source /Users/nickdyer/.vim/plugged/gruvbox/gruvbox_256palette_osx.sh

# Setup android stuff
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

