set -exo pipefail

OS=$(uname -n)

cd setup

chmod +x setup-${OS}.sh
sh setup-${OS}.sh

chmod +x structure.sh
sh structure.sh

chmod +x teardown-${OS}.sh
sh teardown-${OS}.sh

cd ../scripts

for f in *; do
	chmod +x ${f}
done

export URUK_PATH=$(pwd)
