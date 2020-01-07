#!/bin/bash

# Go to the working directory (current directory by default)
cd ${working_directory:-./}

# If a URL is passed to an exclude list, remove ours and use theirs.
if [[ ! -z "${exclude_list_url}" ]]; then
	rm exclude-list.txt
    wget -O exclude-list.txt "${exclude_list_url}"
fi

# Loop over list of files/folders and remove them from deployment
ITEMS=`cat exclude-list.txt`
for ITEM in $ITEMS; do
    find . -depth -name "$ITEM" -exec rm -rf "{}" \;
done

# Remove exclude-list file
rm exclude-list.txt