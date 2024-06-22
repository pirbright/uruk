cd $URUK_PATH

gum spin --spinner dot --title "Updating..." -- sleep 5

git pull

gum write "Update Completed!"
