#!/usr/bin/env bash
# Reproducible build with the TeX Live version of the original submission (2020).
# Requires podman (or docker: export ENGINE=docker). Output: build/article.vinci-uncertainty.pdf
# openout_any=a: the TL2020 bibtex refuses to write its output to the absolute -outdir otherwise.
set -euo pipefail
cd "$(dirname "$0")"
ENGINE=${ENGINE:-podman}
IMAGE=docker.io/texlive/texlive:TL2020-historic
mkdir -p build
"$ENGINE" run --rm -e openout_any=a -v "$PWD/src:/src:ro,Z" -v "$PWD/build:/out:Z" -w /src "$IMAGE" \
  latexmk -pdf -interaction=nonstopmode -outdir=/out article.vinci-uncertainty.tex
