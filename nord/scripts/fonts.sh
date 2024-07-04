#!/usr/bin/bash

sudo mkdir /usr/share/fonts/FOTRodin
sudo mv $(dirname "${BASH_SOURCE[0]}")/fonts/* /usr/share/fonts/FOTRodin
rmdir $(dirname "${BASH_SOURCE[0]}")/../fonts
