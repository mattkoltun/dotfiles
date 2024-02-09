function gpf
    set current_branch $(git branch --show-current)
    git push --force --set-upstream origin $current_branch
end
