function workspace
    set -l project_name $argv[1]
    set -l project_path $REPO_DIR/$project_name

    if not test -d $project_path; and test "$argv[2]" = clone
        git clone ssh://git@sourcecode.vectra.io:7999/sp/$project_name.git $REPO_DIR/$project_name
    else if not test -d $project_path
        mkdir -p $project_path
    end

    set -l tmux_current_session $(tmux display -p "#S")

    tmux new-window -t $tmux_current_session -n $(echo $project_name | string upper) -c $project_path
    tmux select-pane -t "$tmux_current_session.0" -c $project_path
    tmux split-window -t $tmux_current_session -c $project_path
end
