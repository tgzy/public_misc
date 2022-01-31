---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# Hugo

## Installation
[HUGO-Anleitung](https://adityatelange.github.io/hugo-PaperMod/posts/papermod/papermod-installation/#sample-pagemd)
[Anleitung #2](https://gohugo.io/getting-started/usage/)

```bash
git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod --depth=1
git submodule update --init --recursive # needed when you reclone your repo (submodules may not get cloned automatically)
git submodule add someGitArchive public
```

## Use
```bash
D:
cd D:\Programme\Hugo\Sites\example.com
hugo new --kind default posts/hugo_post.md
hugo -t PaperMod
```

## Errorhandling
```bash
git rm -r --cached D:\Programme\Hugo\Sites\example.com
```
