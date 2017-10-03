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
git checkout -b temp
$root_dir/scripts/bump-major-version.sh
git checkout dev 
git merge --ff-only temp 
git push origin dev
git branch -D temp