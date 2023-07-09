## Write a bash script that is always monitoring a directory and copies any new file modified files being added to that to a new dircetory else where 

#!/bin/bash

source_dir="/path/to/source/directory"
destination_dir="/path/to/destination/directory"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' does not exist!"
    exit 1
fi

# Check if the destination directory exists
if [ ! -d "$destination_dir" ]; then
    echo "Destination directory '$destination_dir' does not exist!"
    exit 1
fi

# Initialize the timestamp of the last copied file
last_timestamp=0

# Start an infinite loop
while true; do
    # Find the most recently modified file in the source directory
    newest_file=$(ls -t --time=modified "$source_dir" | head -n 1)
    
    if [ -n "$newest_file" ]; then
        source_file="$source_dir/$newest_file"
        destination_file="$destination_dir/$newest_file"

        # Get the modification timestamp of the newest file
        timestamp=$(stat -c %Y "$source_file")

        # Check if the newest file has a more recent timestamp
        if [ "$timestamp" -gt "$last_timestamp" ]; then
            # Copy the newest file to the destination directory
            cp "$source_file" "$destination_file"
            echo "File '$newest_file' copied to '$destination_dir'"
            last_timestamp=$timestamp
        fi
    fi

    # Sleep for a specific duration before checking again
    sleep 1
done
