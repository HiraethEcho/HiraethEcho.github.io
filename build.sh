#!/bin/sh
# Build resume + CV (EN/ZH) into static/
set -e
cd "$(dirname "$0")"
typst compile resume.typ    static/resume.pdf
typst compile resume-zh.typ static/resume-zh.pdf
typst compile cv.typ        static/cv.pdf
typst compile cv-zh.typ     static/cv-zh.pdf
for f in static/resume.pdf static/resume-zh.pdf static/cv.pdf static/cv-zh.pdf; do
  printf '%s: %s pages\n' "$f" "$(pdfinfo "$f" | awk '/^Pages/{print $2}')"
done