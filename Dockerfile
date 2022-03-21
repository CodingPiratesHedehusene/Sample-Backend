FROM mcr.microsoft.com/dotnet/sdk:6.0-bullseye-slim AS package

WORKDIR /Src

COPY Src/EksempelBackendAPI/EksempelBackendAPI.csproj EksempelBackendAPI/
RUN dotnet restore EksempelBackendAPI/EksempelBackendAPI.csproj

FROM package as build
COPY Src .
RUN dotnet build -c Release --no-restore EksempelBackendAPI/EksempelBackendAPI.csproj

FROM build as publish
RUN dotnet publish --no-build EksempelBackendAPI/EksempelBackendAPI.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:6.0-bullseye-slim AS final
WORKDIR /app
COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "EksempelBackendAPI.dll"]
CMD ASPNETCORE_URLS=http://*:$PORT dotnet EksempelBackendAPI.dll