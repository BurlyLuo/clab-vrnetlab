#!/bin/bash

version="20260112-2355"

# Download latest jammy lts cloud image
download_url="https://chuangtzu.ftp.acc.umu.se/images/cloud/trixie/20260112-2355/debian-13-genericcloud-amd64-20260112-2355.qcow2"

# Extract the filename from the URL
filename="debian-13-genericcloud-amd64-$version.qcow2"

# Check if the file already exists in the current directory
if [ -e "$filename" ]; then
    echo "File $filename already exists. Skipping download."
else
    # Download the URL
    curl -o $filename "$download_url"
    echo "Download complete: $filename"
fi
