#!/usr/bin/env bash

set -euo pipefail

bar_font='-*-terminus-medium-*-*-*-12-*-*-*-*-*-*-*,-*-profont-*-*-*-*-12-*-*-*-*-*-*-*,-*-times-medium-r-*-*-12-*-*-*-*-*-*-*,-misc-fixed-medium-r-*-*-12-*-*-*-*-*-*-*,-*-*-*-r-*-*-*-*-*-*-*-*-*-*'
bar_color='rgb:0000/0000/0000'
bar_font_color='rgb:a0a0/a0a0/a0a0'
bar_color_selected='rgb:0000/8080/8080'
bar_font_color_selected='rgb:0000/0000/0000'

choice=$(ls ~/.screenlayout | dmenu -fn "${bar_font}" -nb "${bar_color}" -nf "${bar_font_color}" -sb "${bar_color_selected}" -sf "${bar_font_color_selected}" -i -l 10 -p 'Location: ')
path=$(basename "${choice}")

bash "$HOME/.screenlayout/${path}"
exec "$HOME/.xinitrc"
