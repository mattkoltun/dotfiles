# Path to your oh-my-zsh installation.
#powerline-daemon -q
#source $HOME/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

#%{$fg[cyan]%}%m %#%{$fg[default]%} "
#%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}

alias bb=brazil-build
alias bba='brazil-build apollo-pkg'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbr='brc brazil-build'
alias bbra='bbr apollo-pkg'
alias brc='brazil-recursive-cmd'
alias brc=brazil-recursive-cmd
alias bre='brazil-runtime-exec'
alias btpt='brazil-third-party-tool'
alias bws='brazil ws'
alias bwscreate='bws create -n'
alias bwsuse='bws use --gitMode -p'
alias e=emacs
alias l='ls -lFvh'
alias la='ls -lavh'
alias ll='ls -lAvh'
alias register_with_aaa=/apollo/env/AAAWorkspaceSupport/bin/register_with_aaa.py

export AUTO_TITLE_SCREENS="NO"
export GIT_EDITOR=vim
export JAVA_HOME=/apollo/env/JavaSE8/jdk1.8
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$PATH:/apollo/env/BrazilThirdPartyTool/bin
export PATH=$PATH:/apollo/env/OctaneBrazilTools/bin:/home/koltunm/bin
export PATH=$BRAZIL_CLI_BIN:$PATH
export PATH=$HOME/.toolbox/bin:$PATH:/bin:/usr/bin:/usr/local/bin:/$HOME/.local/bin
export PROMPT=""
export RPROMPT=
export SSH_CLIENT=""
export ZSH="$HOME/.oh-my-zsh"

DEFAULT_USER=koltunm
ENV_ZSH=$ZSH
ZSH=$ENV_ZSH
#ZSH=$HOME/.oh-my-zsh
ZSH_THEME="oxide"


for f in SDETools envImprovement AmazonAwsCli OdinTools BarkCLI QuiltCLI; do
    if [[ -d /apollo/env/$f ]]; then
        export PATH=/apollo/env/$f/bin:$PATH
    fi
done


set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}

if [ -f ~/.zshrc-dev-dsk-post ]; then
    source ~/.zshrc-dev-dsk-post
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
#    PATH=$HOME/bin:$PATH
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
#    PATH=$HOME/.local/bin:$PATH
fi


plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

#xset r rate 240 40                          # delay and hits per second
