#!/usr/bin/env bash
set -euo pipefail

rm -f .crowdin-temp.yml
rm -f assets/nice_actions/lang/en_US.json
cp /tmp/nice_actions-en_us.json assets/nice_actions/lang/en_us.json

find assets/nice_actions/lang -maxdepth 1 -type f -name "*.json" | while read -r file; do
  dir="$(dirname "$file")"
  base="$(basename "$file")"
  lower="$(echo "$base" | tr '[:upper:]' '[:lower:]')"
  if [ "$base" != "$lower" ]; then
    tmp="$dir/.tmp-$lower"
    mv "$file" "$tmp"
    mv "$tmp" "$dir/$lower"
  fi
done
