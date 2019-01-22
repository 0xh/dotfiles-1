#!/bin/bash

git config --global user.name "Wenxuan Zhang"
git config --global user.email "wenxuangm@gmail.com"

git config --global github.user "wfxr"

git config --global color.ui true

# Prettier diffs
git config --global diff.compactionHeuristic true
git config --global diff.indentHeuristic on

# avoid enter password again and again
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

# This makes sure that push pushes only the current branch, and pushes it to the
# same branch pull would pull from
git config --global push.default upstream

# This converts CRLF endings to LF endings on Mac & Lin and also keeps them in
# the repo, but for Windows checkouts it converts LF to CRLF (and back to LF on
# commits)
git config --global core.autocrlf input

# When editing the commit message, git will now always include a diff of the
# changes below the message area (the diff does NOT become part of the commit
# message, it's only there for information).
git config --global commit.verbose true

# Number of concurrent submodule fetches
git config --global submodule.fetchJobs 8

# Prettier diffs
git config --global diff.compactionHeuristic true
git config --global diff.indentHeuristic on

# diff-so-fancy
command -v diff-so-fancy >/dev/null && git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta "39"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "222 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"

# Auto rebase
git config --global pull.rebase true

git config --global color.status.added     green
git config --global color.status.updated   cyan
git config --global color.status.changed   red
git config --global color.status.untracked yellow
