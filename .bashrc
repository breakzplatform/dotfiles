export TERM=xterm-256color
export EDITOR="mvim"

# load bash aliases
if [ -f ~/.aliases ]; then . ~/.aliases; fi

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"

. ~/.bash-powerline.sh