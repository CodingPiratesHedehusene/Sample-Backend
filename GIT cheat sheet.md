# Git Cheat sheet
Git er et open source distribueret versions-kontrol-system, som er baseret på GitHub aktiviteter. Kode bliver placeret i "Repositories", der er en samling af filer, som tilsammen danner et projekt med indhold.

## Installation af Git
- **GitHub for Windows** https://windows.github.com
- **GitHub for Mac** https://mac.github.com
- Andre platforme kan findes på http://git-scm.com

## Oprette repositories
Starter et projekt enten ved at oprette et lokalt projekt eller hente et eksisterende projekt ned fra for eksempel Github (klone).
- Opret nyt lokalt repositry med et givet navn: `$ git init [project-name]`
- Opret et repository som klon: `$ git clone [url]`

## Gruppering af ændringer
En god praksis, når der arbejdes med ændringer, er at lave en ny branch, så man ikke uforvarende kommer til at ødelægge kode, der virker.
- Liste over eksisterende branches: `$ git branch`
- Opret ny branch: `$ git branch [branch-name]`