#!/bin/bash
CurrentPath=`pwd`
cd - > /dev/null 2>&1
PrePath=`pwd`

cd /home/rstudio/src

if [ $(git remote -v | wc -l) -gt 0 ];then
    if [ $(git remote -v | grep 'https://github.com/whalsrb100/src.git' | wc -l) -eq 0 ];then
        git remote add https://github.com/whalsrb100/src.git
    fi
else
    if [ $(git remote -v | grep 'https://github.com/whalsrb100/src.git' | wc -l) -eq 1 ];then
        git remote -v
    fi

fi

git config credential.helper store
git add -A
git commit -m "auto commit"
git push origin master

cd ${PrePath} > /dev/null 2>&1
cd ${CurrentPath} > /dev/null 2>&1
