#!/bin/bash
set -Eeuo pipefail

install_diff_so_fancy() {
	while true; do
		read -p "Do you want to install diff-so-fancy? (y/n) " yn
		case $yn in
			[Yy]* ) break;;
			[Nn]* ) return 0;;
			* ) echo "Please answer yes or no.";;
		esac
	done

	if command -v "diff-so-fancy" >/dev/null 2>&1; then
		echo "  diff-so-fancy is already installed."
		return 0
	fi

	local install_dir="/usr/local/bin"
	
	sudo mkdir -p "$install_dir"

	if [[ ! -d "$install_dir/diffsofancy" ]]; then
		sudo git clone https://github.com/so-fancy/diff-so-fancy "$install_dir/diffsofancy"
	fi

	sudo chmod +x "$install_dir/diffsofancy/diff-so-fancy"

	if [[ ! -L "$install_dir/diff-so-fancy" ]]; then
		sudo ln -s "$install_dir/diffsofancy/diff-so-fancy" "$install_dir/diff-so-fancy"
	fi
}
