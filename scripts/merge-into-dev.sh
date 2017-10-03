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
git checkout dev
$root_dir/scripts/bump-major-version.sh
git push origin dev