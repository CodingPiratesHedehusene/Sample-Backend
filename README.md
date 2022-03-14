# Sample-Backend

Et projekt, der viser en måde at lave et backend REST api ved hjælp af .net 5 eller .net 6. Om man vælger at benytte VB.NET eller C# er underordnet - min personlige favorit er C#.

## Værktøjer

### Udviklingsmiljø

Der er forskellige værktøjer til at arbejde med REST api i .net

- **Visual Studio Code** er et letvægts editormiljø, der understøtter mange forskellige sprog, og der kan installeres udvidelser til mange forskellige formål. Det kan downloades her: https://code.visualstudio.com/download
- **Visual Studio Community 2022** er et større udviklingsmiljø, som fylder mere, men også har flere faciliteter indbygget. Det kan downloades her: https://visualstudio.microsoft.com/vs/community/. Selve installationen kan tilpasses med en masse forskellige parametre.

Hvilket, der anvendes, er underordnet, men umiddelbart vurderer jeg Visual Studio Code er hurtigst at komme i gang med.

Efter kloning af et repository (måske også efter oprettelse af et repository) bliver man mødt af en advarsel om at stole på koden. Den ser således ud:

![Trust code image](./res/VSCode%20Trust%20folder.png)

Sæt hak i

> Trust the authors of all files in the parent folder

og klik derefter på knappen Yes.

### Github

Versionsstyring af kode kan gøres i GitHub. Coding Pirates Hedehusene har en organisation i Github på https://github.com/CodingPiratesHedehusene, hvor også dette repository kan findes (https://github.com/CodingPiratesHedehusene/Sample-Backend)

Installation og kort guide (til kommandolinje) findes i [GIT cheat sheet](./GIT%20cheat%20sheet.md). Bemærk, at både Visual Studio Code og Visual Studio Community 2022 har god integration mod GitHub.

## Web API projekt

En ofte anvendt praksis er, at koden i et repository ikke lægges direkte i repository roden, men i undermappen Src. Denne mappe kan oprettes i Windows Explorer, man kan også gøres i Powershell. Det gøres ved at åbne Powershell i repository mappen og udføre følgende kommandoer:

```Powershell
md Src
cd Src
```

Vi vælger et projektnavn og opretter en mappe til det. Som eksempel vælger vi projektnavnet **EksempelBackendAPI** og udfører derfor følgende kommandoer i Powershell vinduet:

```Powershell
md EksempelBackendAPI
cd EksempelBackendAPI
```

For at oprette et nyt project i .net anvendes kommandoen

`dotnet new [skabelon]`

For at se en liste over tilgængelige skabeloner, bruger vi kommandoen

`dotnet new --list`

For at oprette et Web API project (til REST API), skal vi have fat i skabelonen **ASP.NET Core Web API** (kort navn er **webapi**)

Altså udfører vi kommandoen

`dotnet new webapi`

i Powershell-vinduet. Dette opretter et projekt med samme navn som den mappe, man udfører kommandoen i. Altså får vores projekt navnet **EksempelBackendAPI.csproj**.

Skabelonen opretter et projekt, som indeholder en eksempel-controller samt kode til at starte og eksekvere projektet.
