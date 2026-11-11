#!/bin/bash
# Joins the parts in src/ (in name order) into the single-file app.
#   AGEC6403_Study_App.html  -> the file published as the Claude artifact
#   index.html               -> the same app as a full web page, for GitHub Pages
# Usage: bash build.sh
cd "$(dirname "$0")"
cat src/*.html > AGEC6403_Study_App.html
{ echo '<!doctype html>'; echo '<html lang="en">'; cat AGEC6403_Study_App.html; echo '</html>'; } > index.html
echo "Built AGEC6403_Study_App.html and index.html ($(wc -c < index.html | tr -d ' ') bytes)"
