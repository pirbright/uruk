gh auth login

gh repo list $GIT_ORG | while read -r repo _; do
	gh repo clone "$repo" "$repo$
done
