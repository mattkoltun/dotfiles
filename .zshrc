# Lines configured by zsh-newuser-install

ZSH_DISABLE_COMPFIX=true

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

# The following lines were added by compinstall
#zstyle :compinstall filename '/Users/mkoltun/.zshrc'


# If you come from bash you might have to change your $PATH.
# source /etc/environment
source $(dirname $(gem which colorls))/tab_complete.sh

export AWS_PROFILE=bastion-sso
export AWS_DEFAULT_OUTPUT=table
export AWS_PAGER=

export BUILDKIT_STEP_LOG_MAX_SIZE=10000000
export BUILDKIT_STEP_LOG_MAX_SPEED=10000000

export GIT_EDITOR=nvim
export VISAUL=nvim
export EDITOR=$VISUAL

# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"
export ZSH=/usr/local/.zsh/oh-my-zsh
export OH_MY_ZSH=$ZSH
export ZSH_CUSTOM=$ZSH/custom

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888"

export HOMEBREW_FORCE_BREWED_CURL=1

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="oxide"
ZSH_THEME="koltun-theme"

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
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

#alias up="sudo apt update"
#alias ug="sudo apt upgrade -y"
#alias ull='apt list --upgradable'

alias ls='colorls -h --group-directories-first --almost-all'
alias l='colorls -h --group-directories-first --long'
alias ll='colorls -h --group-directories-first --long --almost-all'
#alias l='ls -lFvh'
#alias ll='ls -lAvh'
#alias la='ls -lavh'

alias please=sudo
alias vim=nvim
alias tf=terraform
alias tg=terragrunt
alias k=kubectl
alias dc=docker-compose
alias d=docker

# alias python=python3

# alias bootbios=systemctl reboot --firmware-setup

#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#
#alias gksu='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'
#alias getBattery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | sed -e "s/\s*//g" | cut -f2 -d:'
#alias getFonts='fc-list | cut -d: -f2 | sort | uniq '

alias senv='source ~/envvars.sh'

typeset -U PATH
add-path() {
  if [ -d "$2" ]; then
    if [ "$1" = "f" ]; then
      export PATH[1,0]="$2:"
    else 
      export PATH+=("$2")
    fi
  fi
}


#xmodmap -e "keycode  13 = 4 EuroSign 4 EuroSign"
#/usr/bin/setxkbmap -option "ctrl:swapcaps"
#xset r rate 225 40                          # delay and hits per second
#
## stop resetting keybinds
#gsettings set org.gnome.settings-daemon.plugins.keyboard active false
#
## disable super+q keybind
#gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
#
#
#xdg-mime default webtorrent-desktop.desktop x-scheme-handler/magnet

source <(kubectl completion zsh)
autoload edit-command-line; zle -N edit-command-line

# ^[ - means control
# C  - means control

bindkey '\C-x\C-e' edit-command-line
bindkey '^[]' up-line-or-beginning-search
bindkey '^[[' down-line-or-beginning-search                                    
bindkey '^ ' autosuggest-accept

function cd {
  builtin cd "$@" && ll
}

function git-commit-msg {
  branch_abbrv=$(git branch --show-current | cut -d'-' -f1 -f2)
  git commit -m "$branch_abbrv $(echo $@)"
}

function git-push-set-origin {
  current_branch=$(git branch --show-current)
  git push --set-upstream origin $current_branch
}

function git-push-force-set-origin {
  current_branch=$(git branch --show-current)
  git push --force --set-upstream origin $current_branch
}

alias gcmsg=git-commit-msg
alias gp=git-push-set-origin
alias gpf=git-push-force-set-origin

function git-squash {
    # Usage: git-squash <target-branch (default master)> <commit-message (default first commit in branch)>
    CURRENT_BRANCH=$(git branch --show-current)

    if [[ -z $1 ]]; then
        printf "Please input target branch [master]: "
        read TARGET_BRANCH
    else
        TARGET_BRANCH=$1
    fi
    [[ -z $TARGET_BRANCH ]] && TARGET_BRANCH='master'

    if [[ -z $2 ]]; then
        printf "Please input commit message [<first commit message in branch>]: "
        read MESSAGE
    else
        MESSAGE=$1
    fi
    [[ -z $MESSAGE ]] && MESSAGE=$(git log master..$CURRENT_BRANCH --oneline | tail -1)

    git reset $(git merge-base $TARGET_BRANCH $CURRENT_BRANCH)
    git add -A
    git commit -m "$MESSAGE"
}



# GoLang
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/go
export BREWPATH=/home/linuxbrew/.linuxbrew

add-path f "$HOME/bin"
add-path f "$HOME/.local/bin"
add-path f "$HOME/.pyenv/bin"
add-path f "$HOME/Apps/apache-maven/bin"
add-path f "$GOPATH/bin"
add-path f "$GOROOT/bin"
add-path f "$BREWPATH"
add-path f "/snap/bin"
add-path f "/usr/local/sbin"
add-path f "/usr/local/opt/curl/bin"
add-path f "/usr/local/opt/llvm/bin"
add-path f "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
  export PYENV_ROOT=`pyenv root`
  add-path f $PYENV_ROOT/shims
fi

tghere() {
        MAKEFILE_DIR="$HOME/repos/saas-platform"
        export TERRAGRUNT_COMMAND="terragrunt $@"
        export TERRAGRUNT_DIR=$(grealpath --relative-to=${MAKEFILE_DIR} .)
        make -C ${MAKEFILE_DIR} _terragrunt_generic
}

#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/Cellar/tfenv/2.2.2/versions/0.14.11/terraform terraform

autoload -Uz compinit
compinit -u
# End of lines added by compinstall
