# --------------- history ---------------
export HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

# -------------- keyboard ---------------
#setxkbmap -query | grep layout

#_have setxkbmap && test -n "$DISPLAY" && \
#  setxkbmap -option caps:escape &>/dev/null

# ------------ stty annoyances ----------
# stop blocking printing output in terminal
# after pressing Ctrl+S 
stty stop underf

#-- environment variables --------------


# --------------- aliases ---------------
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

alias k=kubectl
complete -o default -F __start_kubectl k
alias '?'=duck
alias Repos='cd /media/gdlfr/data/Repos'
#echo 'alias k=kubectl' >>~/.bashrc
#echo 'complete -o default -F __start_kubectl k' >>~/.bashrc

# ------------- functions -------------
count() { 
  total=$1 
  for ((i=total; i>0; i--)); do sleep 1; printf "Time remaining $i secs \r"; done 
  echo -e "\a" 
} 

up() {
  times=$1
  while [ "$times" -gt "0" ]; do
    cd ..
    times=$(($times - 1))
  done
}


