#!/bin/sh
set +x

git checkout release

git reset origin/release --hard

git merge --strategy=ours  origin/main 
git fetch && git rebase

git push origin HEAD:release

git checkout main

