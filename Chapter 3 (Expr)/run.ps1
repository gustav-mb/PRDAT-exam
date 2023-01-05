param([bool]$compile = $false)

if ($compile) {
    Write-Host "Compiling Java files..."
    javac .\Machine.java
    Write-Host "Done."
}
else {
    dotnet fsi -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\Expr\Absyn.fs .\Expr\ExprPar.fsi .\Expr\ExprPar.fs .\Expr\ExprLex.fs .\Expr\Parse.fs .\Expr\Expr.fs .\ex2_4Handout.fs
}