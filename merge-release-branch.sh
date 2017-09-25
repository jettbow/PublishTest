set -e
if [ "$1" == "" ]
then
  echo "Error:Please specify the name of release branch"
  exit
fi 
if [ "$2" == "" ]
then
  echo "Error:Please specify the name of release Tag"
  exit
fi 
if [[ "$2" == v* ]]
then
  echo "Error:Tag name should not start with 'v'"
  exit
fi 

git fetch origin master dev "$1"
git checkout -B master origin/master
git checkout -B dev origin/dev
git checkout -B "$1" origin/"$1"
git checkout dev 
git merge "$1"
git push origin dev
git checkout master 
git merge "$1"
git push origin master
git tag -a "$2" -m '"$2"'
git push origin "$2"
open https://github.com/jettbow/PublishTest/releases/new?tag="$2"