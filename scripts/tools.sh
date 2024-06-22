CHOICE=$(gum choose "Clone" "Pull" "Fix" "Back" "Quit" --height 10 --header "What would you like to do?" | tr '[:upper:]' '[:lower:]')

[ -n "$CHOICE" ] && [ "$CHOICE" != "quit" ] && source $URUK_PATH/scripts/$CHOICE.sh
