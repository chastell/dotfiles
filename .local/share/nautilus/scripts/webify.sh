#!/bin/bash

source ~/webify.sh

for file in `echo $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS`
do
  webify "$file"
done
