set -g -x fish_greeting '🚀 joseli.to'

# config display WSL2
export DISPLAY=(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1

# browser 
export BROWSER='/mnt/c/Users/josel/AppData/Local/BrowserSelect/BrowserSelect.exe'

# aliases
alias cls='clear'

alias git:s='cd /mnt/a/git/sallve'
alias git:j='cd /mnt/a/git/breakzplatform'
alias git:b='cd /mnt/a/git/breakzplatform'

alias fish:reload='source ~/.config/fish/config.fish && clear && fish'
alias fish:r='fish:reload'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ls='ls -G'
alias l='ls -l'
alias la='ls -la'
alias lsd='ls -l | grep "^d"'

alias ip='dig +short myip.opendns.com @resolver1.opendns.com'

thefuck --alias | source

# functions
function firefox:win
    cd '/mnt/c/Program Files/Mozilla Firefox/'
    command './firefox.exe' $argv
end

function browser:win
    cd '/mnt/c/Users/josel/AppData/Local/BrowserSelect'
    command './BrowserSelect.exe' $argv
end


# kill the process that occupy my port 3000
function k3
    kill -9 3000
end