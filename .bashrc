# Set Vi-Mode
set -o vi

PS1='\[\e[38;5;159m\]\h\[\e[0m\] \[\e[38;5;242m\]::\[\e[0m\] \[\e[38;5;120m\]\W\[\e[0m\] \\$ '

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
