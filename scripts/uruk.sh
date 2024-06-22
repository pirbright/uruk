# Bootstrap $URUK_PATH
if [[ -z "${URUK_PATH}" ]]; then
	export URUK_PATH=$(find /home -type d -name 'uruk')
fi

# Make sure all commands are executable
for d in $URUK_PATH/scripts/*.sh; do
	chmod +x $d
done

CMD=$(gum choose "Install" "Configure" "Fonts" "Backgrounds" "Tools" "Update" "Uninstall" "Help" "Quit" --height 10 --header "Welcome to Uruk! What would you like to do?" | tr '[:upper:]' '[:lower:]')

[ -n "$CMD" ] && [ "$CMD" != "quit" ] && source $URUK_PATH/scripts/$CMD.sh

