#!/bin/sh
# Build all 4 CV variants into static/
set -e
cd "$(dirname "$0")"
typst compile cv.typ              static/cv.pdf
typst compile cv-zh.typ           static/cv-zh.pdf
typst compile cv-industry-en.typ  static/cv-industry-en.pdf
typst compile cv-industry-zh.typ  static/cv-industry-zh.pdf
for f in static/cv.pdf static/cv-zh.pdf static/cv-industry-en.pdf static/cv-industry-zh.pdf; do
  printf '%s: %s pages\n' "$f" "$(pdfinfo "$f" | awk '/^Pages/{print $2}')"
done
