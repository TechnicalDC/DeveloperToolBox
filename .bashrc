# Set Vi-Mode
set -o vi

# ===== HACKER MATRIX PROMPT =====

# Colors
GREEN="\[\033[0;32m\]"
BRIGHT_GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
RED="\[\033[1;31m\]"
RESET="\[\033[0m\]"

# Function to set PS1 dynamically
set_bash_prompt() {
    local EXIT="$?" # exit code of last command

    # Default color: green
    local COLOR="$BRIGHT_GREEN"

    # If root user -> yellow
    if [[ $EUID -eq 0 ]]; then
        COLOR="$YELLOW"
    fi

    # If last command failed -> red
    if [[ $EXIT -ne 0 ]]; then
        COLOR="$RED"
    fi

    PS1="${COLOR}[\t] \u@\h ${GREEN}\w${RESET}\n$ "
}

# Apply before each prompt
PROMPT_COMMAND=set_bash_prompt

# ===== GENERAL =====
alias cls='clear'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Safer file operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ===== LS ENHANCEMENTS =====
alias ls='ls --color=auto'
alias ll='ls -lhF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -ltrh' # sort by time

# ===== SYSTEM =====
alias path='echo -e ${PATH//:/\\n}' # show PATH in lines
alias ports='sudo lsof -i -P -n | grep LISTEN' # show open ports

# ===== FILES & SEARCH =====
alias grep='grep --color=auto'
alias f='find . -type f -iname'
alias d='find . -type d -iname'

# ===== MISC =====
alias e='exit'
alias please='sudo $(fc -ln -1)' # rerun last command with sudo
alias wget='wget -c' # resume downloads
