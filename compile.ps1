Write-Host "WARNING: Compiling everything...`n" -BackgroundColor Red

$script = {
    $name = $_.Name
    Write-Host "$name`n" -BackgroundColor Yellow
    Set-Location $name
    Write-Host "`n"
    .\run.ps1 $true
    Write-Host "`n"
    Set-Location $PSScriptRoot
}

dotnet build
Get-ChildItem -Directory -Filter Chapter* | ForEach-Object $script

Write-Host "FINISHED." -BackgroundColor Green