#!/bin/bash
CurrentPath=`pwd`
cd - > /dev/null 2>&1
PrePath=`pwd`

cd /home/rstudio > /dev/null 2>&1
rm -rf src > /dev/null 2>&1
git clone https://github.com/whalsrb100/src.git

cd ${PrePath} > /dev/null 2>&1
cd ${CurrentPath} > /dev/null 2>&1
