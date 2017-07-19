# ~/.bashrc: executed by bash(1) for non-login shells.       
#cool startup pic for bash
archey
#make iterm 256 colors
export TERM=xterm-256color
#give color to ls command
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# check the window size after each command and, if necessary,                                                                                                             
# update the values of LINES and COLUMNS. 
shopt -s checkwinsize 

# Makes directory then moves into it
#function mkcdr {
# make a directory and cd to it
mcd()
{
    test -d "$1" || mkdir "$1" && cd "$1"
}

#print working directory in bash
PS1='\w\$ '

#go up more directories with more dots
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#clean terminal with vim
TERM=xterm; export TERM

