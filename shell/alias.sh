# alias 

 # Sudo
 alias s='sudo'
 alias fuck='s $(fc -ln -1)'

 # system
 alias shutdown='sudo shutdown -h now'
 alias reboot='sudo reboot'
 alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
 alias free='free -h'

 ## ls ##
 alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
 alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
 alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'

 ## stuff ##
 alias grep='grep --color=tty -d skip'
 alias cp="cp -i"                          # confirm before overwriting something
 alias df='df -h'                          # human-readable sizes
 alias free='free -m'                      # show sizes in MB

 ## pacman ##
 alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  &&  sudo pacman -Suu'
 alias clean='sudo pacman -Rs $(pacman -Qdtq)'
 alias update='sudo pacman --color auto -Syu'
 alias search='pacman -Ss'

 ## programs ##
 alias v='vim'
 alias f='ranger'
 alias n='ncmpc'
 alias sv='sudo vim'
 alias scrot='scrot -q 100 ~/media/pictures/Screenshots/scrot_%Y-%m-%d.png'
 alias play='playonlinux'
 alias bc='cd "~/doc/Bricscad/BricsCAD-V16/ && sh bricscad.sh'
 alias matrix='echo -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v    +="     "; fi; done; echo -e "$v"; v=""; done'
 alias toxrdb='sh /home/zero/Dokumente/Mod/toxrdb'
 alias mpv='mpv --no-osc'

 # ex - archive extractor
 # usage: ex <file>
 ex ()
 {
   if [ -f $1 ] ; then
     case $1 in
       *.tar.bz2)   tar xjf $1   ;;
       *.tar.gz)    tar xzf $1   ;;
       *.bz2)       bunzip2 $1   ;;
       *.rar)       unrar x $1   ;;
       *.gz)        gunzip $1    ;;
       *.tar)       tar xf $1    ;;
       *.tbz2)      tar xjf $1   ;;
       *.tgz)       tar xzf $1   ;;
       *.zip)       unzip $1     ;;
       *.Z)         uncompress $1;;
       *.7z)        7z x $1      ;;
       *)           echo "'$1' cannot be extracted via ex()" ;;
     esac
   else
     echo "'$1' is not a valid file"
   fi
 }

