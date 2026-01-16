for file in originals/*.jpg; do
  convert "$file" -quality 85 -strip "$(basename "$file")"
done
