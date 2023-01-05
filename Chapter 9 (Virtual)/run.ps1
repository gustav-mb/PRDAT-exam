param([bool]$compile = $false)

if ($compile) {
    # Selsort
    Write-Host "Preparing Selsort..."
    csc /o .\virtual\Selsort.cs -out:.\virtual\Selsort.exe
    ildasm /text .\virtual\Selsort.exe > .\virtual\Selsort.il
    
    javac .\virtual\Selsort.java
    javap -verbose -c .\virtual\Selsort.class > .\virtual\Selsort.jvmbytecode
    Write-Host "Done."
    
    # CircularQueue
    Write-Host "Preparing CircularQueue..."
    javac .\virtual\CircularQueue.java
    javap -verbose -c .\virtual\CircularQueue.class > .\virtual\CircularQueue.jvmbytecode
    
    csc /o .\virtual\CircularQueue.cs -out:.\virtual\CircularQueue.exe
    ildasm /text .\virtual\CircularQueue.exe > .\virtual\CircularQueue.il
    Write-Host "Done."
    
    # Square
    Write-Host "Preparing Square..."
    csc /o .\virtual\Square.cs -out:.\virtual\Square.exe
    Write-Host "Done."
    
    # StringConcatSpeed
    Write-Host "Preparing StringConcatSpeed..."
    javac .\virtual\StringConcatSpeed.java
    csc /o .\virtual\StringConcatSpeed.cs -out:.\virtual\StringConcatSpeed.exe
    Write-Host "Done."
}
else {
    Write-Host "Nothing to run."
}