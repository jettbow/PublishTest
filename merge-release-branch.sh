set -e
if [[ `git status --porcelain` ]]; then
  echo "Error:You have changes in the current branch. Make it clean before merging the release."
  exit
fi
echo "Please enter the name of the release branch (e.g release/2.33.0): "
read release_branch
echo 'git fetch origin "$release_branch"'
git fetch origin "$release_branch"
echo "Please enter the name of new Tag (e.g 2.33.0): "
read release_tag
while [[ "$release_tag" == v* ]]
do
  echo "Error:Tag name should not start with 'v'"
  echo "Please enter a new Tag name(e.g 2.33.0): "
  read release_tag
  exit
done 
echo "Release branch: $release_branch"
echo "Tag name: $release_tag"
read -p "Press enter to continue"

git fetch origin master dev "$release_branch"
git checkout -B master origin/master
git checkout -B dev origin/dev
git checkout -B "$release_branch" origin/"$release_branch"
git checkout dev 
git merge "$release_branch"
git push origin dev
git checkout master 
git merge "$release_branch"
git push origin master
git tag -a "$release_tag" -m '"$release_tag"'
git push origin "$release_tag"
read -p "Press enter to continue opening Carousell-Android page for adding new Release in GitHub..."
open https://github.com/carousell/Carousell-Android/releases/new?tag="$release_tag"