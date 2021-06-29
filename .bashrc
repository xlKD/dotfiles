export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/usr/local/mysql/bin:/usr/local/bin:/opt/apache-maven/bin:$PATH"
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
export PS1='\[\033[36m\]\W \[\033[32m\]$(__git_ps1) \[\033[33;1m\]( ・_・)ノ \[\e[0m\]'
stty -ixon
