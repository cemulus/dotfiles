#!/bin/bash
set -Eeuo pipefail

readonly SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

if [[ "$(uname -s)" == "Linux" ]]; then
	if ! command -v "zsh" >/dev/null 2>&1; then
		echo "Zsh is not installed."
	
		case "$(lsb_release -si)" in
			Ubuntu*) sudo apt install zsh;;
			Fedora*) sudo dnf install zsh;;
			*) echo "Unsupported distro. Install Zsh manually."; exit 1;;
		esac
	fi
fi

if [[ -d ~/.oh-my-zsh ]]; then
	echo "oh-my-zsh is already installed."
	exit
fi

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh-completions"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
