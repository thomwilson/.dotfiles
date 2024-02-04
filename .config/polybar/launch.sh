#!/usr/bin/env bash

source $HOME/.config/polybar/.env

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar-thom.log
polybar thom 2>&1 | tee -a /tmp/polybar-thom.log & disown

echo "Bars launched..."
