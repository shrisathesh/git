#!/bin/bash
cd
mkdir conflict-repo
cd conflict-repo
git init
touch my_code.txt
git add my_code.txt
echo "this is my first script" > my_code.txt
git commit -am "first commit"
git checkout -b new_branch
echo "THis is my second script" > my_code.txt
git commit -am "first commit on new_branch"
git checkout master
echo "this is my first script123" > my_code.txt
git commit -am 'second commit on master'
git merge new_branch
