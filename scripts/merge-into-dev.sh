#!/bin/bash
set -e
root_dir=$(dirname $0)/..
env_version_name=`$root_dir/get-curren-version-name.sh`
cd $root_dir/
git checkout $env_version_name
git branch temp
$root_dir/bump-major-version.sh
git checkout dev 
git merge -ff temp 
git push origin dev
git branch -D temp