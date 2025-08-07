#!/bin/bash

# Make sure destination directory exists
DEST_DIR="./assets"
mkdir -p "$DEST_DIR"

# Google Drive file ID 
FILE_ID="19zYhvYLawIverhW2rCbfJd5nmFPHOITO"

# Output file name (optional)
OUTPUT_NAME="programs.csv"

# Run gdown to download the file
gdown "https://drive.google.com/uc?id=$FILE_ID" -O "$DEST_DIR/$OUTPUT_NAME"
