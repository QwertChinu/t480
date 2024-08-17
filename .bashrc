#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

set editing-mode vi
set show-mode-in-prompt on
set vi-ins-mode-string +
set vi-cmd-mode-string :
set -o vi
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx

alias v="nvim"
alias brc="v ~/.bashrc"
alias p="sudo pacman"
alias ll="ls -lrt"
alias smb="sudo mount /dev/sdb2 /mnt"
alias hm="cd /mnt/home/chinu/"
alias SS="sudo systemctl"
alias gbin="cd ~/.local/bin/"
alias upkg="paru -Syyy && updblocks 36"
alias upd="paru -Qqe > ~/.local/bin/pkg && cfg commit -am 'System update' && cfg push && pass git push && updm && paru -Syu && sudo paru -Sc && sudo fstrim -a -v && updblocks 36 && updblocks 37 && updblocks 38"
alias e="lfub"
alias tsmm="watch -n 10 transmission-remote -l"
alias tsm="transmission-remote"
alias tsmd="transmission-daemon --download-dir $HOME/Downloads/video"
alias tsmr="transmission-remote -l | grep 100\% | grep Done | awk '{print $1}' | xargs -n 1 -I \% /usr/bin/transmission-remote -t \% -r"
alias sma="sudo mount /dev/sda1 /mnt"
alias config='/usr/bin/git --git-dir=/home/chinu/.cfg/ --work-tree=/home/chinu'
alias play="mpv --ytdl-format=137+251"
alias off="sudo poweroff"
alias res="sudo reboot"
alias tp="ping 8.8.8.8"
alias et="xinput --enable 10"
alias dt="xinput --disable 10"
alias ro="p -Qqtd"
alias bs="sudo sv status /etc/runit/sv/bluetooth"
alias bu="sudo sv up /etc/runit/sv/bluetooth"
alias bd="sudo sv down /etc/runit/sv/bluetooth"
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias yt="ytfzf -f"
alias bl="sudo xbacklight -set"
alias fix_date="sudo ntpdate pool.ntp.org"

neofetch
