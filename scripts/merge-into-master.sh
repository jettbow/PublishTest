#!/bin/bash
set -e
root_dir=$(dirname $0)/..
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
          env_version_name="$value"
        fi
      fi
    fi
  done < "$file"
fi
cd $root_dir/
git checkout $env_version_name
git branch temp
git checkout master 
git merge temp
git push origin master