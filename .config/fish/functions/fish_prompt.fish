function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    # user
    set_color magenta
    printf '%s ' $USER

    # hostname
    set_color yellow
    printf '%s ' (prompt_hostname)

    # pwd
    set_color $fish_color_cwd
    printf '%s ' (prompt_pwd)
    set_color normal


    # envs
    set_color normal
    if test -n "$BASENAME"
        # set_color green
        printf "(%s)  " (set_color green)(basename $BASENAME)(set_color normal)
    end

    if test -n "$AWS_PROFILE"
        printf "(%s) " (set_color d5a8ff)(basename $AWS_PROFILE)(set_color normal)
    end

    if test -n "$AWS_REGION"
        printf "(%s) " (set_color ffd9a1)(basename $AWS_REGION)(set_color normal)
    end

    if test -n "$AWS_DEFAULT_REGION"
        printf "(%s) " (set_color ffd9a1)(basename $AWS_DEFAULT_REGION)(set_color normal)
    end
    fish_git_prompt

    # Line 2
    echo
    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    printf '↪ '
    set_color normal
end
