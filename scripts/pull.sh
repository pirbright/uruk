REPO_PATH=$(gum input --placeholder "Enter path (leave blank for pwd): ")

[ -n $REPO_PATH ] && export REPO_PATH=$REPO_PATH

source $URUK_PATH/utils/pull.sh
