#!/bin/sh
set +x

git checkout release

git fetch && git rebase
git reset origin/release --hard

<<<<<<< Updated upstream
<<<<<<< Updated upstream
git merge --strategy=ours  origin/main 
=======
git merge origin/main 

>>>>>>> Stashed changes
git fetch && git rebase
=======
git merge origin/main 
>>>>>>> Stashed changes

git push origin HEAD:release

git checkout main

