#!/bin/sh
set +x


git fetch && git rebase

git push -f origin HEAD:release


