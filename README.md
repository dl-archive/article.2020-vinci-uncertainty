# Depicting Uncertainty in 2.5D Treemaps

[Daniel Limberger](https://orcid.org/0000-0002-9111-4809), [Matthias Trapp](https://orcid.org/0000-0003-3861-5759), and [Jürgen Döllner](https://orcid.org/0000-0002-8981-8583)

*Proceedings of the 13th International Symposium on Visual Information Communication and Interaction (VINCI '20)*, December 8–10, 2020, Eindhoven, Netherlands. ACM, pp. 28:1–2.

DOI: [10.1145/3430036.3432753](https://doi.org/10.1145/3430036.3432753) · Author's version: [Zenodo](https://doi.org/10.5281/zenodo.24056633) · [ResearchGate](https://www.researchgate.net/publication/347313642)

> A truthful and unbiased display of data using information visualization requires detecting and communicating uncertainty.
> Uncertainty is often inherent in data or is introduced by data processing and visualization (e.g., visual display of accumulated data) but frequently not accounted for.
> This paper discusses the suitability of advanced visual variables such as sketchiness, noise, nesting-level contouring, and color weaving for communicating uncertainty.

<p><a href="limberger2020-uncertainty-as-submitted.pdf"><img src="preview/page-1.webp" width="24%" alt="page 1"/></a> <a href="limberger2020-uncertainty-as-submitted.pdf"><img src="preview/page-2.webp" width="24%" alt="page 2"/></a></p>

## Contents

- [`src/`](src/) – LaTeX sources of the camera-ready version (ACM `acmart` v1.71, sigconf)
- [`limberger2020-uncertainty-as-submitted.pdf`](limberger2020-uncertainty-as-submitted.pdf) – camera-ready PDF as submitted to ACM
- [`slides/`](slides/) – LaTeX (beamer) sources of the VINCI 2020 talk
- [`build.sh`](build.sh) – reproducible build with TeX Live 2020 (podman or docker)
- [`preview/`](preview/) – page previews for this README

## Build

```bash
./build.sh        # → build/article.vinci-uncertainty.pdf
```

The build uses the bundled `acmart.cls` (v1.71, 2020) and the TeX Live 2020 container; a local TeX Live 2026 (`latexmk -pdf src/article.vinci-uncertainty.tex`) gives the same result.
The build reproduces `limberger2020-uncertainty-as-submitted.pdf` (identical text and layout; bold figure captions differ marginally in glyph rendering).

## Versions

- [`v1.0-camera-ready`](https://github.com/dl-archive/article.2020-vinci-uncertainty/tree/v1.0-camera-ready) – sources as submitted to ACM (2020-11-02)

## Citation

```bibtex
@InProceedings{limberger2020-uncertainty,
  author    = {Limberger, Daniel and Trapp, Matthias and D{\"o}llner, J{\"u}rgen},
  title     = {Depicting Uncertainty in 2.5D Treemaps},
  booktitle = {Proceedings of the 13th International Symposium on Visual Information Communication and Interaction},
  year      = {2020},
  series    = {VINCI~'20},
  publisher = {ACM},
  articleno = {28:1--2},
  doi       = {10.1145/3430036.3432753},
  isbn      = {978-1-450387-50-7},
  pages     = {28:1--2},
}
```
