#!/bin/bash

rofi -no-config -no-lazy-grab -show calc -modi calc -theme ~/.config/rofi/calc.rasi -calc-command "printf '{result}' | xclip -selection clipboard" -hint-result '' -hint-welcome 'Result'