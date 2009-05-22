export PS1='
$(hostname):$PWD
$(whoami)>'

set -o vi

alias ll='ls -Fal'
alias r='fc -s'
alias e='eclipse &'

export PATH="$PATH:~/scripts"

export ANT_OPTS="-Xmx1024m -Xss16m"
export ANT_HOME="/opt/apache-ant-1.7.0/"
export PATH="$ANT_HOME/bin:$PATH"

export JAVA_HOME=/home/don/apps/jdk1.6.0_03/
export PATH="$JAVA_HOME/bin:$PATH"
