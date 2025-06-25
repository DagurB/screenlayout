# Screenlayout
Screen layout menu using dmenu

Allows you to pick a screen layout script from `~/.screenlayout/`

Mainly intended to be used in conjunction with the scripts generated from `arandr`

Uses defaults from `spectrwm`, but they can be easily modified. To add `screenlayout` to your spectrwm config, add

```
program[screenmenu] = screenmenu.sh
bind[screenmenu] = MOD+s # or whatever keybind you fancy
```
