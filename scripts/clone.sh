#!/bin/bash
CurrentPath=`pwd`
cd - > /dev/null 2>&1
PrePath=`pwd`

rm -rf src
git clone https://github.com/whalsrb100/src.git

cd ${PrePath} > /dev/null 2>&1
cd ${CurrentPath} > /dev/null 2>&1
