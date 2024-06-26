#!/bin/bash
set -Eeuo pipefail

install_vim_plug() {
    readonly SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

	while true; do
        read -p "Do you want to install vim-plug? (y/n) " yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) return 0;;
            * ) echo "Please answer yes or no.";;
        esac
    done

    if [[ -f ~/.vim/autoload/plug.vim ]]; then
        echo "vim-plug is already installed."
        return 0
    fi

    echo "Installing vim-plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    vim +'PlugInstall --sync' +qa
}

install_vim_plug
