#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias l='ls -CF'

alias cpg++='g++ -O2 -std=c++17 -Wno-unused-result -Wshadow -Wall -o'
alias debugg++='g++ -std=c++17 -Wshadow -Wall -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -o'
