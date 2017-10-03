#!/bin/bash
set -e
root_dir=$(dirname $0)/..
env_version_name=`$root_dir/scripts/get-current-version-name.sh`
cd $root_dir/
git checkout $env_version_name
git branch temp
git checkout master 
git merge --ff temp 
git push origin master
git branch -D temp