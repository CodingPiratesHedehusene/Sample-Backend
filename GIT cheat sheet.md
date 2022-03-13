# Git Cheat sheet
Git er et open source distribueret versions-kontrol-system, som er baseret på GitHub aktiviteter. Kode bliver placeret i "Repositories", der er en samling af filer, som tilsammen danner et projekt med indhold.

Diverse kommandoer herunder udføres i en kommandolinje - det kan f.eks. være Powershell, Kommandoprompt eller Git Bash i Windows. På Mac er jeg i tvivl.

De fleste kommandoer er der understøttelse for i både Visual Studio Code og i Visual Studio Community 2022. Men når jeg går i kommandolinje, er min foretrukne Powershell.

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
- Skift branch: `$ git checkout [branch-name]`
- Flet branch ind i den aktive branch: `$ git merge [branch-name]`
- Slet branch: `$ git branch -d [branch-name`

## Håndtering af ændringer

Klargøring af ændrede og tilføjede filer til synkronisering med en branch på for eksempel Github.

- Liste over nye eller ændrede filer: `$ git status`
- Vis ændringer, der ikke er staged: `$ git diff`
- Klargør filer til versionsstyring (stage): `$ git add [file]` ('.' som file tager alle filer)
- Vis ændringer, er er staged: `$ git diff --staged`
- Fjern filer fra stage (men beholder ændringer): `$git reset [file]`
- Gem ændringer i filhistorik (commit): `$ git commit -m "[Beskrivelse af ændringer]"`

## Gennemgang af historik

Se hvilke ændringer, der er lavet på filerne i repository.

- Se log over ændringer for den aktive branch (alle filer): `$ git log`
- Se log over ændringer for en fil: `$ git log --follow [file]` (er der mellemrum i filnavnet, skal det omkranses med '')
- Se forskelle mellem to branches: `$ git diff [first-branch]...[second-branch]` (ofte main...[Active-branch])
- Se informationer om og ændringer i et commit: `$ git show [commit]`

## Synkronisering af ændringer

Synkronisering af ændringer på den branch på remote, er er knyttet til den lokale branch.

- Hent historik fra remote repository: `$ git fetch`
- Hent historik og ændringer fra remote repository: `$ git pull`
- Send ændringer til remote: `$ git push`
