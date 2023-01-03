param([bool]$compile=$false)

if ($compile) {
    Write-Host "Compiling msmlmachine.c..."
    gcc -Wall .\MsmlVM\msmlmachine.c -o .\MsmlVM\msmlmachine.exe
    Write-Host "Done."

    Write-Host "Building the micro-SML command line compiler..."
    fsc --standalone -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\MicroSML\Absyn.fs .\MicroSML\FunPar.fs .\MicroSML\FunLex.fs .\MicroSML\TypeInference.fs .\MicroSML\HigherFun.fs .\MicroSML\Machine.fs .\MicroSML\Contcomp.fs .\MicroSML\ParseTypeAndRun.fs .\MicroSML\MicroSMLC.fs -o .\MicroSML\microsmlc.exe
    Write-Host "Done."
} else {
    dotnet fsi -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\MicroSML\Absyn.fs .\MicroSML\FunPar.fsi .\MicroSML\FunPar.fs .\MicroSML\FunLex.fs .\MicroSML\TypeInference.fs .\MicroSML\HigherFun.fs .\MicroSML\Machine.fs .\MicroSML\Comp.fs .\MicroSML\Contcomp.fs .\MicroSML\ParseTypeAndRun.fs
}