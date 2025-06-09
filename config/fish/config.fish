set -agx PATH /Users/mkoltun/bin


set -x AWS_DEFAULT_OUTPUT json
set -x AWS_PAGER
set -x AWS_PROFILE bastion-sso

abbr -a tf terraform
abbr -a tg terragrunt
abbr -a k kubectl
abbr -a dc docker compose
abbr -a docker-compose docker compose
abbr -a d docker
abbr -a rc source ~/.config/fish/config.fish
abbr -a ws workspace

abbr -a vui bash $VECTRA_TOOLBOX/vui/vui.sh
abbr -a vui-cloud bash $VECTRA_TOOLBOX/vui/cloud.sh
abbr -a vui-local bash $VECTRA_TOOLBOX/vui/local.sh

# pyenv init - | source
# eval "$(pyenv init -)"
# eval "$(pyenv init --path)"

# unalias brew 2>/dev/null
# brewser=$(stat -f "%Su" $(which brew))
# alias brew='sudo -Hu '$brewser' brew'



function save_history --on-event fish_preexec
    history --save
    history --merge
end

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

if status is-interactive
    source $HOME/.config/fish/secrets.fish
    # Commands to run in interactive sessions can go here
    source (/opt/homebrew/bin/starship init fish --print-full-init | psub)
    pyenv init - | source
    #starship init fish | source
end
