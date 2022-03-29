#!/bin/bash

set -Eeuo pipefail

readonly SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

for i in .bashrc \
    .bash_aliases \
    .bash_functions \
    .profile; do

    ln -sf "$SCRIPT_DIR/$i" "$HOME/$i";
    echo "$HOME/$i --> $SCRIPT_DIR/$i";
done
