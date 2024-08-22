#!/bin/bash -eu
# How to use:
# 1) sudo apt-get install graphicsmagick lftp xsel;
# 2) setup your wm/de keybindings to run this script (e.g. bind to printscreen);
# 3) press the key;
# 4) click a window or select a rectangle area on your display;
# 5) paste from X11 selection (middle mouse button) to share the link.
# This script assumes that your yandex-team/LD login equals to your local user name.
exec 9> /tmp/jing-lock.$USER

flock -n 9 || exit 0
T=$(date +"/tmp/%Y-%m-%d_%H.%M.%S.png")
grim -g "$(slurp)" "$T"
curl -gSs --upload-file "${T}" "https://jing:jing@jingdav.yandex-team.ru/vchigrin/${T}"
exec 9>&-
echo "$T" | wl-copy
