#!/usr/bin/env bash


polybar-msg cmd quit

source ~/.dotfiles.env

echo "---" | tee -a /tmp/polybar-thom.log
polybar thom 2>&1 | tee -a /tmp/polybar-thom.log & disown

echo "Bars launched..."
