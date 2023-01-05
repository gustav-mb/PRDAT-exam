param([bool]$compile = $false)

if ($compile) {
    Write-Host "Compiling Java files..."
    javac .\ListC\CircularQueue.java
    javac .\ListC\StringConcatSpeed.java
    Write-Host "Done."

    Write-Host "Compiling resurrection.cs"
    csc .\ListC\resurrection.cs -out:.\ListC\resurrection.exe
    Write-Host "Done."

    Write-Host "Building list-C command line Compiler..."
    fsc --standalone -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\ListC\Absyn.fs .\ListC\CPar.fs .\ListC\CLex.fs .\ListC\Parse.fs .\ListC\Machine.fs .\ListC\Comp.fs .\ListC\ListCC.fs -o .\ListC\listcc.exe
    Write-Host "Done."

    Write-Host "Compiling listmachine.c..."
    gcc -Wall -g .\ListVM\listmachine.c -o .\ListVM\listmachine.exe 
    Write-Host "Done."
}
else {
    dotnet fsi -r .\bin\Debug\net7.0\FsLexYacc.Runtime.dll .\ListC\Absyn.fs .\ListC\CPar.fs .\ListC\CLex.fs .\ListC\Parse.fs .\ListC\Machine.fs .\ListC\Comp.fs .\ListC\ParseAndComp.fs
}