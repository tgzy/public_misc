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
git remote set-head origin <branch>
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

### Forking and Merge Request

```bash
git remote add upstream https://github.com/tgzy/public_misc.git
git fetch upstream
git rebase upstream/main
```

## Aliases

### General
```bash
$ git config --global alias.co checkout
$ git config --global alias.br branch
$ git config --global alias.ci commit
$ git config --global alias.st status
```

```bash
$ git config --global alias.upush push --set-upstream [origin] $(git branch --show-current)
$ git config --global alias.gco checkout [branch]
$ git config --global alias.gcb checkout -b [branch]
```

### git gud meme
```bash
git config --global --add alias.gud "reset --hard"
```
