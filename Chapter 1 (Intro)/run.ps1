param([bool]$compile=$false)

if ($compile) {
    Write-Host "Compiling Java files..."
    javac .\Intro\SimpleExpr.java
    Write-Host "Done."
} else {
    dotnet fsi .\Intro\Intro1.fs .\Intro\Intro2.fs
}