#!/usr/bin/env bash

selected=$(cliphist list | tofi --prompt-text ":clip " --horizontal false --height 400 --result-spacing 0)

if [ ! -z "$selected" ]; then
  cliphist decode <<<"$selected" | wl-copy
fi
