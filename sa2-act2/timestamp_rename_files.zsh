#!/bin/zsh
base_directory="research_project"
for file in "$base_directory"/**/*.txt; do
timestamp=$(date +%Y%m%d%H%M%S)
mv "$file" "${file:h}/${timestamp}_${file:t}"
done