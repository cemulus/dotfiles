#!/bin/bash

set -Eeuo pipefail

readonly SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

ln -sf "$SCRIPT_DIR/libinput-gestures.conf" "$HOME/.config/libinput-gestures.conf";
