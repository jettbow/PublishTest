#!/bin/bash
set -e
if [ "$1" == "" ]
then
  echo "Error:Please specify the version name"
  exit
fi
root_dir=$(dirname $0)/..
env_version_name="$1"
cd $root_dir/
git checkout $env_version_name
git checkout -b temp
git checkout master 
git merge --ff -m "Merge $env_version_name" temp 
git push origin master
git branch -D temp