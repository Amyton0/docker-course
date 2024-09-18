FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine
EXPOSE 8080
FROM mcr.microsoft.com/dotnet/sdk:8.0
RUN dotnet publish -c Release -o WebApp/WebApp.csproj  net8.0
ENTRYPOINT ["dotnet", "App/App.dll"]