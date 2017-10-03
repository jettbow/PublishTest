#!/bin/bash
set -e
root_dir=$(dirname $0)/..
text=""
env_version_name=""
newline=$'\n'
file="$root_dir/gradle.properties"

if [ -f "$file" ]
then
  while IFS='$newline' read line
  do
    #echo $line
    if [[ ($line == \#*) || ($line == \org.gradle.jvmargs*)]]
    then
      text=$text$line$newline
    else
      #echo $line
      IFS='=' 
      set -- $line
      key=$1
      value=$2
      #echo $key
      if [ "$key" != "" ]
      then
        eval "${key}='${value}'"
        if [ "$key" == "envVersionName" ]
        then
          major=$(echo $value | cut -d'.' -f1)
          minor=$(echo $value | cut -d'.' -f2)
          env_version_name=$major.$((${minor}+1)).0
          text=$text"$key=${env_version_name}"$newline
        else
          text=$text"$key=$value"$newline
        fi
      fi
    fi
  done < "$file"
fi
echo "${text}" > ./gradle.properties
echo "Bump version $env_version_name"
now="$(date +'%Y-%m-%d')"
sed -i "1 s/$/ - $now/" $root_dir/CHANGELOG.md
echo -e "## [$env_version_name]\n### Added\n### Changed\n### Removed\n### Fixed\n$(cat $root_dir/CHANGELOG.md)" > $root_dir/CHANGELOG.md
git add -A
git commit -m "Bump version $env_version_name($env_version_code)"