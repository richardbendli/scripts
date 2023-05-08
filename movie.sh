#!/bin/bash

# dependencies: fzf
# path to the movies folder
movies="/home/ben/media/movies"

menu=$(ls -a "$movies" | uniq -u | fzf --height=100% --reverse --header-first)

exec nohup mpv "$movies"/"$menu">/dev/null 2>&1
