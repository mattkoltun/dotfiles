function senv
    set -g -x BASENAME $argv[1]
    switch $argv[2]
        case eu
            set -g -x AWS_REGION eu-west-1
        case us
            set -g -x AWS_REGION us-west-2
        case ca
            set -g -x AWS_REGION ca-central-1
        case au
            set -g -x AWS_REGION ap-southeast-2
        case '*'
            return 1
    end
    switch $argv[3]
        case sso
            set -g -x AWS_PROFILE bastion-sso
        case ing
            set -g -x AWS_PROFILE saas-ingestion-dev
        case app
            set -g -x AWS_PROFILE saas-app-dev
        case ai
            set -g -x AWS_PROFILE vectra-genai-dev
        case '*'
            return 1
    end
end
