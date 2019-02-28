echo "Loading .bashrc"
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=7000
HISTFILESIZE=6000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH=$HOME/bin:$PATH
    echo $PATH
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH=$HOME/.local/bin:$PATH
fi

# load apache maven
if [ -d "$HOME/Apps/apache-maven/bin" ] ; then
    PATH=$HOME/Apps/apache-maven/bin:$PATH
fi


export PS1="\[\033[38;5;157m\]\h\[$(tput sgr0)\]\[\033[38;5;203m\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;123m\]\u\[$(tput sgr0)\]\[\033[38;5;203m\] \[$(tput sgr0)\]\[\033[38;5;229m\]\W\[$(tput sgr0)\]\[\033[38;5;219m\]\$(__git_ps1 ' %s')\[$(tput sgr0)\]\[\033[38;5;83m\] \$\[$(tput sgr0)\]\[\033[38;5;157m\] \[$(tput sgr0)\]"


export GIT_EDITOR=vim
export VISAUL=vim
export EDITOR="$VISUAL"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.5

#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi
# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/mati/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/mati/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mati/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/mati/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

/usr/bin/setxkbmap -option "ctrl:swapcaps"
echo "LOADED .bashrc"
