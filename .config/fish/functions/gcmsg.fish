function gcmsg
    set branch_abbrv $(git branch --show-current | cut -d'-' -f1 -f2)
    git commit -m "$branch_abbrv $(echo $argv)"
end
