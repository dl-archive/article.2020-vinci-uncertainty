#!/usr/bin/env bash
# Reproducible build with the TeX Live version of the original submission (2020).
# Requires podman (or docker: export ENGINE=docker).
#   ./build.sh          → build/article.vinci-uncertainty.pdf   (paper)
#   ./build.sh slides   → build/slides/color-weaving.pdf         (talk slides)
# openout_any=a: the TL2020 bibtex refuses to write its output to the absolute -outdir otherwise.
set -euo pipefail
cd "$(dirname "$0")"
ENGINE=${ENGINE:-podman}
IMAGE=docker.io/texlive/texlive:TL2020-historic
if [[ ${1:-} == slides ]]; then
  dir=slides out=build/slides main=color-weaving.tex
else
  dir=src out=build main=article.vinci-uncertainty.tex
fi
mkdir -p "$out"
"$ENGINE" run --rm -e openout_any=a -v "$PWD/$dir:/src:ro,Z" -v "$PWD/$out:/out:Z" -w /src "$IMAGE" \
  latexmk -pdf -interaction=nonstopmode -outdir=/out "$main"
