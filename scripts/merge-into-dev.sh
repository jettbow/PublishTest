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
git checkout dev
$root_dir/scripts/bump-minor-version.sh
git push origin dev