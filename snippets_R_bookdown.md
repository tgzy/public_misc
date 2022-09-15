---
title: "Untitled"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
# R Cheatsheet

## Build
```R
bookdown::render_book('index.Rmd', 'all')
bookdown::render_book("index.Rmd", "bookdown::gitbook")
browseURL("docs/index.html")
```

## Config
```R
unlink("index_cache", recursive = TRUE)
```

```R
# _bookdown.yml
book_filename: "bookdown-demo"
language:
  ui:
    chapter_name: "Chapter "
delete_merged_file: true
output_dir: "docs"
view: https://github.com/tgzy/bookdown/blob/main/%s
edit: https://github.com/tgzy/bookdown/edit/main/%s
```

```R
# _output.yml
bookdown::gitbook:
  css: style.css
  config:
    toc:
      before: |
        <li><a href="./">A Minimal Book Example</a></li>
      after: |
        <li><a href="https://github.com/rstudio/bookdown" target="blank">Published with bookdown</a></li>
    edit: https://github.com/tgzy/bookdown/edit/main/%s
    download: ["pdf", "epub"]
bookdown::pdf_book:
  includes:
    in_header: preamble.tex
  latex_engine: xelatex
  citation_package: natbib
  keep_tex: yes
bookdown::epub_book: default
bookdown::bs4_book: default
```
