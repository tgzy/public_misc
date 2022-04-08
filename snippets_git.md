---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# GIT

## Konfiguration
```bash
git config --list
git config --global user.email "johndoe@example.com"
git config --global user.name "John Doe"
```

## Initialisieren
Requires Git version >= 2.28:
```bash
git config --global init.defaultBranch main
```

Generic:
```bash
git init
```

## Remote hinzufügen
```bash
git remote -v
git remote rm origin
git remote add origin https://github.com/tgzy/public_misc.git
git remote show origin
git fetch
```

```bash
git checkout -b main origin/main
git push --set-upstream origin main
git push origin main
```
