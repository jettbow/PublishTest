set -e
if [ "$1" == "" ]
then
  echo "Error:Please specify the build number"
  exit
fi 
root_dir=$(dirname $0)/..
tag=""
maror=""
minor=""
build=$1
newline=$'\n'
file="$root_dir/gradle.properties"

if [ -f "$file" ]
then
  while IFS='$newline' read line
  do
    if [[ ($line == \#*) || ($line == \org.gradle.jvmargs*)]]
    then
      text=$text$line$newline
    else
      IFS='=' 
      set -- $line
      key=$1
      value=$2
      if [ "$key" != "" ]
      then
        eval "${key}='${value}'"
        if [ "$key" == "envVersionName" ]
        then
          major=$(echo $value | cut -d'.' -f1)
          minor=$(echo $value | cut -d'.' -f2)
          tag=$major"."$minor"."$build
          text=$text"$key=${tag}"$newline
        else
          text=$text"$key=$value"$newline
        fi
      fi
    fi
  done < "$file"
fi
echo "${text}" > $root_dir/gradle.properties
$root_dir/scripts/merge-NEW-into-CHANGELOG.sh
cd $root_dir/

git add -A 
git commit -m "Tag $tag"
git push origin dev
git tag -a $tag -m "$tag"
git push origin $tag


