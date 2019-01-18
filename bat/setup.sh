#!/usr/bin/env bash
################################################################################
#    Author: Wenxuan                                                           #
#     Email: wenxuangm@gmail.com                                               #
#   Created: 2019-01-18 18:04                                                  #
################################################################################
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd) && cd "$SCRIPT_DIR" || exit 1

mkdir -p ~/.config/bat
ln -sf "$SCRIPT_DIR/config" ~/.config/bat/config
