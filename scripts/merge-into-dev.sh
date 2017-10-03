#!/bin/bash
set -e
if [ "$1" == "" ]
then
  echo "Error:Please specify the versoin name"
  exit
fi
root_dir=$(dirname $0)/..
env_version_name="$1"
cd $root_dir/
git checkout $env_version_name
git branch temp
$root_dir/bump-major-version.sh
git checkout dev 
git merge --ff temp 
git push origin dev
git branch -D temp