function tm
    set change (test -n "$TMUX"; and echo "switch-client"; or echo "attach-session")

    if test (count $argv) -gt 0
        tmux $change -t "$argv[1]" ^/dev/null
        or begin
            tmux new-session -d -s "$argv[1]"
            tmux $change -t "$argv[1]"
        end
        return
    end

    set session (tmux list-sessions -F "#{session_name}" ^/dev/null | fzf --exit-0)

    if test -n "$session"
        tmux $change -t "$session"
    else
        echo "No sessions found."
    end
end
