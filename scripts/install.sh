OS=$(uname -n)

cd ../apps

for f in *-${OS}.sh; do
	chmod +x ${f}
	sh ${f}
done
