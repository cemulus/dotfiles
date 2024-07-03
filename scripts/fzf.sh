#!/bin/bash
set -Eeuo pipefail

install_fzf() {
	while true; do
		read -p "Do you want to install fzf? (y/n) " yn
		case $yn in
			[Yy]* ) break;;
			[Nn]* ) return 0;;
			* ) echo "Please answer yes or no.";;
		esac
	done

	if command -v "fzf" >/dev/null 2>&1; then
		echo "  fzf is already installed."
		return 0
	fi

	if [[ -d "$HOME/.fzf" ]]; then
		echo "  fzf directory already exists."
	else
		echo "Installing fzf"
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	fi

	~/.fzf/install
}
