# If you come from bash you might have to change your $PATH.
source /etc/environment

source $(dirname $(gem which colorls))/tab_complete.sh

export GIT_EDITOR=nvim
export VISAUL=nvim
export EDITOR="$VISUAL"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6

# Path to your oh-my-zsh installation.
export ZSH="/home/mati/.oh-my-zsh"
export OH_MY_ZSH="/home/mati/.oh-my-zsh"
export ZSH_CUSTOM="/home/mati/.oh-my-zsh/custom"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="oxide"
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
)

source $ZSH/oh-my-zsh.sh

alias up="sudo apt update"
alias ug="sudo apt upgrade -y"
alias ull='apt list --upgradable'

alias ls='colorls -h --group-directories-first --almost-all'
alias l='colorls -h --group-directories-first --long'
alias ll='colorls -h --group-directories-first --long --almost-all'
#alias l='ls -lFvh'
#alias ll='ls -lAvh'
#alias la='ls -lavh'

alias please=sudo
alias vim=nvim

alias bootbios='systemctl reboot --firmware-setup'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias gksu='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'
alias getBattery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | sed -e "s/\s*//g" | cut -f2 -d:'
alias getFonts='fc-list | cut -d: -f2 | sort | uniq '


export GOPATH=$HOME/go
export BREWPATH=/home/linuxbrew/.linuxbrew

if [ -d "$HOME/bin" ]; then
  PATH=$HOME/bin:$PATH
fi

if [ -d "$HOME/.local/bin" ]; then
  PATH=$HOME/.local/bin:$PATH
fi

if [ -d "/usr/local/go/bin" ]; then
  PATH=/usr/local/go/bin:$PATH
fi

if [ -d "$GOPATH/bin" ]; then 
  PATH=$GOPATH/bin:$PATH
fi

if [ -d "/snap/bin" ]; then
  PATH=/snap/bin:$PATH
fi

if [ -d "$HOME/Apps/apache-maven/bin" ]; then
  PATH=$HOME/Apps/apache-maven/bin:$PATH
fi

if [ -d "$BREWPATH" ]; then
  FPATH=$BREWPATH/share/zsh/site-functions:$FPATH
  PATH=$BREWPATH/bin:$PATH
fi


export PATH=$PATH

#xmodmap -e "keycode  13 = 4 EuroSign 4 EuroSign"
/usr/bin/setxkbmap -option "ctrl:swapcaps"
xset r rate 225 40                          # delay and hits per second

# stop resetting keybinds
gsettings set org.gnome.settings-daemon.plugins.keyboard active false

# disable super+q keybind
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false


xdg-mime default webtorrent-desktop.desktop x-scheme-handler/magnet
# autoload -U compinit && compinit


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
#alias k=kubectl
complete -F __start_kubectl k
complete -C '/home/mati/.local/bin/aws_completer' aws
