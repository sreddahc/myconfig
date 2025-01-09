#!/bin/sh

### Key
# ? = Untracked changes
# + = Staged files


# Source: https://github.com/spaceship-prompt/spaceship-prompt/blob/master/sections/git_status.zsh

git_status(){

    # Key
    local untracked="?"
    local added="+"
    local modified="!"
    local renamed=">"
    local deleted="×"
    local stashed="$"
    local unmerged="="
    local ahead="▲"
    local behind="▼"

    # Initialise
    local STATUS=$(command git status --porcelain -b 2>/dev/null)
    local state=""

    # Check for untracked changes
    if $(command echo "$STATUS" | command grep -q -E '^\?\? '); then
        state="$state$untracked"
    fi

    # Check for staged files
    if $(command echo "$STATUS" | command grep -q '^A[ MDAU] '); then
        state="$state$added"
    elif $(command echo "$STATUS" | command grep -q '^M[ MD] '); then
        state="$state$added"
    elif $(command echo "$STATUS" | command grep -q '^UA '); then
        state="$state$added"
    fi

    # Check for modified files
    if $(echo "$STATUS" | command grep -q '^[ MARC]M '); then
        state="$state$modified"
    fi

    # Check for renamed files
    if $(echo "$STATUS" | command grep -q '^R[ MD] '); then
        state="$state$renamed"
    fi

    # Check for deleted files
    if $(echo "$STATUS" | command grep -q '^[MARCDU ]D '); then
        state="$state$deleted"
    elif $(echo "$STATUS" | command grep -q '^D[ UM] '); then
        state="$state$deleted"
    fi

    # Check for stashes
    if $(command git rev-parse --verify refs/stash >/dev/null 2>&1); then
        state="$state$stashed"
    fi

    # Check for unmerged files
    if $(echo "$INDEX" | command grep -q '^U[UDA] '); then
        state="$state$unmerged"
    elif $(echo "$INDEX" | command grep -q '^AA '); then
        state="$state$unmerged"
    elif $(echo "$INDEX" | command grep -q '^DD '); then
        state="$state$unmerged"
    elif $(echo "$INDEX" | command grep -q '^[DA]U '); then
        state="$state$unmerged"
    fi  

    # Check if branch is ahead
    if [ $(command git rev-list --count ${git_branch}@{upstream}..HEAD 2>/dev/null) -ne 0 ]; then
        state="$state$ahead"
    fi

    # Check if branch is behind
    if [ $(command git rev-list --count HEAD..${git_branch}@{upstream} 2>/dev/null) -ne 0 ]; then
        state="$state$behind"
    fi

    # Diverged if both ahead and behind

    # Return
    echo "$state"

}

git_status