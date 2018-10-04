#!/bin/sh
dependencies=(vim 
vim-airline 
vim-airline-themes 
vim-jellybeans 
vim-latexsuite)

notInstalledPack=()
checkIfPackageIsInstalled() {
	if pacaur -Qi $1 > /dev/null ; then
		echo "$1 is installed"
	else
		notInstalledPack+=("$1")
	fi
}

echo "Checking for dependencies..."
for i in "${dependencies[@]}"
do
	checkIfPackageIsInstalled $i
done 

packStr=""
for i in "${notInstalledPack[@]}"
do
	packStr="$packStr $i"
done
if [ "$packStr" != "" ] ; then
	echo "The following packages is not installed:"
	for i in "${notInstalledPack[@]}"
	do
		echo "- $i"
	done
	echo "Would you like them to be installed (Y)es og (N)o?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes ) pacaur -S "$packStr"; break;;
			No ) exit;;
		esac
	done
	path="$(pwd)/.vimrc"
	ln -sf ~/.vimrc $path
fi

