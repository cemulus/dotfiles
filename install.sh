#!/bin/bash

readonly SCRIPT_DIR=$PWD

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
