SHELL="${SHELL##*/}"
URUK_PATH=$(find /home/.local -type d -name 'uruk')

echo "To fix Uruk, please add the following line to your .${SHELL}file.\n\n\tsource ${URUK_PATH}/config/${SHELL}rc (don't include the dot in the file path).\n\n"
