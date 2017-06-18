#!/bin/bash

source ~/borderise.sh

for file in `echo $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS`
do
  borderise "$file"
done
