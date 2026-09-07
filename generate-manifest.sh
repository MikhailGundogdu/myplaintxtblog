#!/bin/bash

tmp=$(mktemp)

find . -type f -name "*.txt" | while read -r file; do
  file="/${file#./}"
  dir=$(dirname "$file")

  path_no_ext="${file%.txt}"

  title=$(sed -n '1p' ".$file")
  subtitle=$(sed -n '2p' ".$file")
  date=$(sed -n '3p' ".$file")

  jq -n \
    --arg dir "$dir" \
    --arg path "$path_no_ext" \
    --arg title "$title" \
    --arg subtitle "$subtitle" \
    --arg date "$date" \
    '{
      path: $dir,
      file: {
        path: $path,
        title: $title,
        subtitle: $subtitle,
        date: $date
      }
    }'
done > "$tmp"

jq -s \
  --arg name "$(sed -n '1p' "name")" \
  '{
    version: 1,
    author: $name,
    directories:
      group_by(.path)
      | map({
          path: .[0].path,
          articles: map(.file)
        })
  }' "$tmp" > manifest.json

rm "$tmp"