#!/bin/bash

#TODO: support names with whitespaces

# save today's date with and without spaces
date_full=$(date +%d\ %b\ %Y)
date_compact=$(date +%d%b%Y)

# 1. echo the header as well as the first argument into nvim's insert mode
# 2. open a file named after today's date + the first argument
echo i\# $date_full • $1 | nvim -s - $HOME/Dropbox/Notes/work/$date_compact_$1.md
