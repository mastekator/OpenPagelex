#!/bin/sh
# Textbook photos, scans and PDFs must never be committed. Images are allowed only in
# app icon / launch image folders and assets/brand/. Prints paths only.
set -eu

bad=$(git ls-files | grep -i -E '\.(jpe?g|png|heic|heif|gif|webp|tiff?|bmp|pdf|djvu|dng)$' \
  | grep -v -E '^(ios|macos)/.*\.xcassets/' \
  | grep -v -E '^android/app/src/main/res/' \
  | grep -v -E '^web/(favicon\.png|icons/)' \
  | grep -v -E '^assets/brand/' || true)

if [ -n "$bad" ]; then
  printf '%s\n' "$bad" | while read -r f; do
    echo "::error file=$f::images, scans and PDFs are not allowed here (textbook content never goes into the repo)"
  done
  exit 1
fi
echo "No forbidden files found"
