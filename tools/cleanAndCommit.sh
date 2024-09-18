#!/bin/sh
set +x

rm -rf *.bak
for i in *.html; do sed -i '.bak' '/<section class=\"u-backlink u-clearfix u-grey-80/,/<\/section>/d'  $i; done
for i in *.html; do sed -i '.bak' 's/<title>.*<\/title>/<title>Farmbuddy Naturals Inc.<\/title>/g'  $i; done

git status

git add *.html
git add *.css

git commit

rm -rf *.bak

