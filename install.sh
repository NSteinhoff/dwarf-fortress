#!/bin/bash

dir=${1:-/usr/share/games/dwarf-fortress/gamedata/data}

if [ -d $dir ]; then
    echo "Installing into '$dir'"
else
    echo "Invalid directory '$dir'"
    echo "Please specify the 'data' directory of your Dwarf Fortress installation."
    exit 1
fi

files=(init/init.txt init/d_init.txt init/interface.txt art/taffer_20x20.png)
for file in ${files[*]}; do
    ln -v -s -f "$(pwd)/$file" "$dir/$file"
done
