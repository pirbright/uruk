# Bootstrap

URUK_PATH="$HOME/.local/share/uruk"
export URUK_PATH=$URUK_PATH

if [ ! -f "$URUK_PATH/setup_done" ]; then
	echo 'Running first time setup. Please enter your password when prompted'
	sleep 3

	chmod +x $URUK_PATH/setup/bootstrap-$(uname -n).sh
	source $URUK_PATH/setup/bootstrap-$(uname -n).sh

	# Make sure all commands are executable
	for d in $URUK_PATH/scripts/*.sh; do
		chmod +x $d
	done

	for u in $URUK_PATH/utils/*.sh; do
		chmod +x $u
	done

	for c in $URUK_PATH/config/*.sh; do
		chmod +x $c
	done

	touch $URUK_PATH/setup_done
fi

CMD=$(gum choose "Install" "Configure" "Fonts" "Backgrounds" "Tools" "Update" "Uninstall" "Help" "Quit" --height 10 --header "Welcome to Uruk! What would you like to do?" | tr '[:upper:]' '[:lower:]')

[ -n "$CMD" ] && [ "$CMD" != "quit" ] && source $URUK_PATH/scripts/$CMD.sh
