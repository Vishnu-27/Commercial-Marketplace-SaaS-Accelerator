Write-host "☁  Preparing the publish files for Customer Site"
dotnet publish ..\..\src\CustomerSite\CustomerSite.csproj -c debug -o ..\..\Publish\CustomerSite
Compress-Archive -Path ..\..\Publish\CustomerSite\* -DestinationPath ..\..\Publish\CustomerSite.zip -Force

Write-host "☁ Path to web application packages $PathToWebApplicationPackages"