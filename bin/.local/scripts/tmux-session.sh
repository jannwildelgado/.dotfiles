#!/bin/bash

tmux=$(command -v tmux)

if [[ -z tmux ]]; then
  echo "TMUX is not installed."
  exit 0
fi

selected=$(find ~/.config ~/Documents/Personal ~/Documents/Work -maxdepth 1 -mindepth 1 -type d | fzf)

if [[ -z $selected ]]; then
 exit 0 
fi

basename=$(basename $selected)

if [[ -z $TMUX ]]; then
  if tmux has-session -t $basename 2> /dev/null; then
    tmux attach-session -t $basename
  else
    tmux new-session -s $basename -c $selected
  fi

  exit 0
fi

if ! tmux has-session -t $basename 2> /dev/null; then
  tmux new-session -ds $basename -c $selected
fi

tmux switch-client -t $basename
