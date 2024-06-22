REPO_PATH="${REPO_PATH:-$(pwd)}"

cd $REPO_PATH

for f in */ ; do
	git checkout main
	git pull
done 
