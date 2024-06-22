cp -r $URUK_PATH/fonts /tmp/fonts

cd /tmp/fonts

for d in $(pwd)/*.zip; do
	FILE_NAME="${d##*/}"
	sudo unzip -d "/usr/share/fonts/${FILE_NAME%%.zip}" -o $d
done
