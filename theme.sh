#!/bin/bash

if [ -f ~/.colour-theme ]; then
  theme=$(cat ~/.colour-theme)
fi

if [[ "light" == $theme ]]; then
  tmux source-file ~/.tmux/light.conf
else
  tmux source-file ~/.tmux/dark.conf
fi

