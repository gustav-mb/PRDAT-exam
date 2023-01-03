param([bool]$compile=$false)

if ($compile) {
    Write-Host "Building the micro-c compiler..."
    fsc --standalone -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\Assembly\Absyn.fs .\Assembly\CPar.fs .\Assembly\CLex.fs .\Assembly\Parse.fs .\Assembly\X86.fs .\Assembly\X86Comp.fs .\Assembly\ParseAndComp.fs .\Assembly\MicroCCAsm.fs -o .\Assembly\microccasm.exe
    Write-Host "Done."
} else {
    dotnet fsi -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\Assembly\Absyn.fs .\Assembly\CPar.fsi .\Assembly\CPar.fs .\Assembly\CLex.fs .\Assembly\Parse.fs .\Assembly\X86.fs .\Assembly\X86Comp.fs .\Assembly\ParseAndComp.fs
}