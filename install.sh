#!/bin/bash
set -Eeuo pipefail

readonly SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

for i in $SCRIPT_DIR/scripts/*.sh; do
    bash "$i"
done

for i in .zshrc \
    .zprofile \
    .zsh_aliases \
    .zsh_functions \
    .vimrc \
    .gitignore_global \
    .gitconfig; do

    ln -sf "$SCRIPT_DIR/$i" "$HOME/$i";
    echo "$HOME/$i --> $SCRIPT_DIR/$i";
done
