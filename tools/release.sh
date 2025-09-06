#!/bin/sh
set +x

git checkout release

git fetch && git rebase
git reset origin/release --hard

git merge --strategy=ours  origin/main 

git push origin HEAD:release

git checkout main

