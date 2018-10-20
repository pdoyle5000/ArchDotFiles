#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lock='xscreensaver-command -lock'
PS1='[\u@\h \W]\$ '
TERMINAL=/usr/bin/kitty
if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
    exec startx
fi
