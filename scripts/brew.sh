#!/bin/bash
set -Eeuo pipefail

install_homebrew() {
	while true; do
		read -p "Do you want to install Homebrew? (y/n) " yn
		case $yn in
			[Yy]* ) break;;
			[Nn]* ) return 0;;
			* ) echo "Please answer yes or no.";;
		esac
	done

	if command -v "brew" >/dev/null 2>&1; then
		echo "  Homebrew is already installed."
		return 0
	fi

	echo "  Installing Homebrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}
