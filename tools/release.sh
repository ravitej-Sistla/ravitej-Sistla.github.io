#!/bin/sh
set +x

git checkout release
git merge origin/main 

git push origin HEAD:release

git checkout main

