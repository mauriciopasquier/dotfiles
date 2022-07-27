#! /bin/bash

# Prompt que detecta si estamos en un repositorio y muestra la rama actual.

# Colores para mi theme de kitty:
# https://raw.githubusercontent.com/dexpota/kitty-themes-website/master/previews/Molokai/preview.png
usuarix='\[\033[01;36m\]'
git='\[\033[01;31m\]'
cls='\[\033[00m\]'

is_git() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null | sed -e 's/^/± /' -e 's/$/ /'
}

PS1="${git}\$(is_git)${usuarix}\u@\h \W\$ ${cls}"
