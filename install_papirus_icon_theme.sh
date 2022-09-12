#!/bin/bash

wget -qO- "https://git.io/papirus-icon-theme-install | DESTDIR=\"$HOME/.icons\" sh"
sudo -E hardcode-tray --conversion-tool RSVGConvert --size 22 --theme Papirus-Dark
wget -qO- "https://git.io/papirus-folders-install | env PREFIX=\"$HOME/.local\" sh"
~/.local/bin/papirus-folders -C red --theme Papirus-Dark
