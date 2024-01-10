if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -agx PATH /Users/mkoltun/bin

set -x AWS_DEFAULT_OUTPUT json
set -x AWS_PAGER
set -x AWS_PROFILE bastion-sso

abbr -a tf terraform
abbr -a tg terragrunt
abbr -a k kubectl
abbr -a dc docker-compose
abbr -a d docker
abbr -a rc source ~/.config/fish/config.fish

starship init fish | source
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
