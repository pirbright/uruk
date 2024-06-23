REPO_PATH="${REPO_PATH:-$(pwd)}"

cd $REPO_PATH

REPO_DIR=$(pwd)
for f in */ ; do
	echo "Checking into $f\n"
	cd $REPO_DIR/$f 
	git checkout main
	git pull
	echo "Done!\n"
done 
