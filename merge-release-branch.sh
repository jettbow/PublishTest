set -e
current_branch=`git rev-parse --abbrev-ref HEAD`
if [[ `git status --porcelain` ]]; then
  echo "Error: You have changes in the current branch. Make it clean before merging the release."
  exit
fi
echo "Please enter the name of the release branch : (e.g release/2.33.0)"
read release_branch
echo "Fetching $release_branch from remote ..."
git fetch origin "$release_branch"
echo "Please enter the name of new Tag : (e.g v2.33.0)"
read release_tag

git fetch origin master dev "$release_branch"
git checkout -B master origin/master
git checkout -B dev origin/dev
git checkout -B "$release_branch" origin/$release_branch

git checkout dev 
echo "Checking conflicts between dev and $release_branch"
if [[ `git merge $release_branch --no-commit --no-ff | grep "CONFLICT"` ]]; then
	git merge --abort
	git checkout "$current_branch"
	echo "Error: There are conflicts between dev and $release_branch"
	exit
fi
git merge --abort

git checkout master
echo "Checking conflicts between master and $release_branch"
if [[ `git merge $release_branch --no-commit --no-ff | grep "CONFLICT"` ]]; then
	git merge --abort
	git checkout "$current_branch"
	echo "There are conflicts between dev and $release_branch"
	exit
fi
git merge --abort

git checkout dev 
git merge --no-ff "$release_branch"
git push origin dev

git checkout master 
git merge --no-ff "$release_branch"
git push origin master

git tag -a "$release_tag" -m '"$release_tag"'
git push origin "$release_tag"
read -p "Press enter to continue opening Carousell-Android page for adding new Release in GitHub..."
open https://github.com/carousell/Carousell-Android/releases/new?tag="$release_tag"

git checkout "$current_branch"