#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pacman='pacman-color'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.rvm/bin:$HOME/.gem/ruby/1.9.1/gems # Add RVM to PATH for scripting
