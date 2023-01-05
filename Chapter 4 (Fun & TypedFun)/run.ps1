param([bool]$compile = $false)

if ($compile) {
    Write-Host "Nothing to compile."
}
else {
    dotnet fsi -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\Fun\Absyn.fs .\Fun\FunPar.fsi .\Fun\FunPar.fs .\Fun\FunLex.fs .\Fun\Parse.fs .\Fun\Fun.fs .\Fun\ParseAndRun.fs .\TypedFun\TypedFun.fs
}