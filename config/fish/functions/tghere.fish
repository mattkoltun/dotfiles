# tghere() {
#   MAKEFILE_DIR="$HOME/repos/saas-platform"
#   export TERRAGRUNT_COMMAND="terragrunt $@"
#   export TERRAGRUNT_DIR=$(grealpath --relative-to=${MAKEFILE_DIR} .)
#   make -C ${MAKEFILE_DIR} _terragrunt_generic
# }
function tghere
    set MAKEFILE_DIR "$HOME/repos/saas-platform"
    set -x TERRAGRUNT_COMMAND "terragrunt $argv"
    set -x TERRAGRUNT_DIR $(grealpath --relative-to=$MAKEFILE_DIR .)
    make -C $MAKEFILE_DIR _terragrunt_generic
end
