#!/bin/bash

# This script customised the output for PS1

local newline=0

new_line_check () {
    if [[ $newline -eq 0 ]]; then
        PS1+="\n├─"
        newline=1
    fi
}

update_status () {

    # Reset newline status
    newline=0

    case "$TERM" in
        xterm-color|*-256color) color_prompt=yes;;
    esac

    if [ "$color_prompt" = yes ]; then

        # Start
        PS1='\n┌─${debian_chroot:+($debian_chroot)}'
        
        # Date
        PS1+='[ \[\033[38;2;255;255;95m\]🕑 \D{%H:%M:%S}\[\033[00m\] ]'

        # user@host
        PS1+='[ \[\033[01;32m\]💻 \u@\h\[\033[00m\] ]'

        # Directory
        PS1+='[ \[\033[01;34m\]📁 \w\[\033[00m\] ]'

        # Python
        if [[ -n "${VIRTUAL_ENV}" ]]; then
            new_line_check
            PS1+="[ $(command sh ~/.bashrc.d/status/python_status.sh) ]"
        fi

        # Git
        if [ $(git rev-parse --is-in-work-tree 2>/dev/null) ]; then 
            new_line_check
            PS1+="[ $(command sh ~/.bashrc.d/status/git_status.sh) ]"
            
        fi
        # End
        PS1+='\n└ $ '

    # else

    fi

    unset color_prompt

}

unset newline
# Update the PS1 variable then ensure it always stays up to date
update_status
PROMPT_COMMAND="update_status"
