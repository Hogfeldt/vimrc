#!/bin/sh
isPackageInstalled(){
	if pacaur -Qi $1 > /dev/null ; then
		echo "$1 is installed"
	else
		echo "$1 is not installed"
	fi
}

echo "Checking for dependencies..."
isPackageInstalled vim-airline
isPackageInstalled vim-airline-themes
isPackageInstalled vim-jellybeans
isPackageInstalled vim-latexsuite
