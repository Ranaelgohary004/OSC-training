#!/bin/bash
if [ "$#" -ne 1 ]; 
	then
		echo "usage: $0 <directory>"
		exit 1
fi

directory=$1
if [ ! -d "$directory" ];
	then
		echo "ERROR: $directory is not a valid"
		exit 1
fi
for file in "$directory"/*.txt; 
	do
if [ -e "$file" ];
	then
		base_name=$(basename "$file")
new_name="old_$base_name"
mv "$file" "$directory/$new_name"
fi
done
echo "files have been renamed"
