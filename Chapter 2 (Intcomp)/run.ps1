param([bool]$compile=$false)

if ($compile) {
    Write-Host "Compiling Java files..."
    javac .\Intcomp\Machine.java
    Write-Host "Done."
} else {
    dotnet fsi .\Intcomp\Intcomp1.fs
}