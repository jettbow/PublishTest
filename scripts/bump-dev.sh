#!/bin/bash
set -e
root_dir=$(dirname $0)/..
cd $root_dir/
git checkout dev
$root_dir/scripts/bump-minor-version.sh
git push origin dev