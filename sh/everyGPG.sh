#!/bin/bash
#this script first archive folder into .tar.gz then encrypt using gpg (you must supply key name instead of ram.)
# Change the directory to the current directory
cd "$(dirname "$0")"
# Loop through each directory in the current directory
for dir in */; do
  # Create an archive of the directory using tar
  tar czf "${dir%/}.tar.gz" "$dir"
  # Encrypt the archive using GPG with the key belonging to user "ram"
  gpg --encrypt --recipient "ram" "${dir%/}.tar.gz"
  # Remove the unencrypted archive
  rm "${dir%/}.tar.gz"
done
