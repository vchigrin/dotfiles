#!/bin/bash -eu
# How to use:
# 1) sudo apt-get install graphicsmagick lftp xsel;
# 2) setup your wm/de keybindings to run this script (e.g. bind to printscreen);
# 3) press the key;
# 4) click a window or select a rectangle area on your display;
# 5) paste from X11 selection (middle mouse button) to share the link.
# This script assumes that your yandex-team/LD login equals to your local user name.

T=$(date +"/tmp/%Y-%m-%d_%H.%M.%S.png")
grim -g "$(slurp)" "$T"
echo "$T" | wl-copy
