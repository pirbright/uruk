NAME=$(gum input --placeholder "Enter user/org name: ")
export GIT_ORG=$NAME
source $URUK_PATH/utils/clone.sh
