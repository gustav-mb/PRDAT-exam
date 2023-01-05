# PRDAT-Exam

First, read [Prerequisites](#prerequisites)

You can use the files provided in two ways:

1. **`Project Mode`** **[RECOMMENDED]** - Everything is compiled automatically through the used IDE.
2. **`Standalone Mode`** - You must compile and run everything manually.

Each Chapter is supplied with a `PowerShell` script that when run, automatically can load required files into F# Interactive and compile required files.

`run` is executed using the following command in a `PowerShell` terminal, when in the same directory as the script:

```ps1
.\run.ps1
```

To use `run` to compile required files (if any), use the following command:

```ps1
.\run.ps1 $true
```

To compile each Chapter use `compile.ps1` in the root directory:

```ps1
.\compile.ps1
```

// **GMB**

</br>

---

</br>

## Prerequisites

1. Install `.NET 7` to be able to use run scripts
2. Setup Environment Variables and install the following:
    * `fsi.exe` (F# Interactive) [optional; built into .NET]
    * `fsc.exe` (F# Compiler) **[REQUIRED]**
    * `csc.exe` (C# Compiler) **[REQUIRED]**
    * `ildasm.exe` (.NET disassembler) **[REQUIRED]**
    * `fslex` (Lexer) [optional; if using project setup] **ELSE** [required; if not]
    * `fsyacc` (Parser) [optional; if using project setup] **ELSE** [required; if not]

3. Install `gcc` (C Compiler) [optional; if done through WSL] **ELSE** [required; if done directly through Windows]

</br>

---

</br>

### Install .NET 7

Install `.NET 7 SDK` to get the newest features and patches like a good little software developer, and be able to use the run scripts (if using **`Project Mode`**)

1. Go to <https://dotnet.microsoft.com/en-us/download/dotnet/7.0>
2. Select the version (64-bit) fitting your system
3. Start the installer and install it
4. Optionally: uninstall the old SDK version

</br>

---

</br>

### Setup Environment Variables for Depdency Programs

#### **fsi and fsc**

`fsi` (F# Interactive) can be used directly through `.NET`. It can be started using the command `dotnet fsi`. However, sometimes it is nice to simply write `fsi`. We can manually set this up.

`fsc` (F# Compiler) cannot be used directly through `.NET`. Therefore, we must manually set it up!

To make you able to simply write `fsi` instead, we can set it up in the `Environment Variables`.

**NOTE:** You must have `Visual Studio` installed to do the next steps!

1. Locate the path to the `F#` directory
    * Check `C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\FSharp\Tools` for `fsi.exe` and `fsc.exe`
    * If the directory doesn't exist check [Find Paths to Dependencies](#find-paths-to-dependencies)
2. If successful, open `Environment Variables`
    1. Goto `User Variables`
    2. Double-click on the `Path` variable
    3. Click the `New` button
    4. Paste the path to the folder containing `fsi` and `fsc`
    5. Click on `OK` twice to close both windows.
    6. Click on `Apply` and then `OK`
    7. Close all terminals and all running `IDEs`
    8. Open a terminal and write `fsi` or `fsc`
    9. If there are no errors, you are done!

</br>

#### **CSC**

`csc` (C# Compiler) cannot be used directly through `.NET`

**NOTE:** You must have `Visual Studio` installed to do the next steps!

1. Locate the path to the `C#` directory
    * Check `C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\Roslyn` for `csc.exe`
    * If the directory doesn't exist check [Find Paths to Dependencies](#find-paths-to-dependencies)
2. If successful, open `Environment Variables`
    1. Goto `User Variables`
    2. Double-click on the `Path` variable
    3. Click the `New` button
    4. Paste the path to the folder containing `csc`
    5. Click on `OK` twice to close both windows.
    6. Click on `Apply` and then `OK`
    7. Close all terminals and all running `IDEs`
    8. Open a terminal and write `csc`
    9. If there are no errors, you are done!

</br>

#### **Ildasm**

`ildasm` (.NET disassembler) cannot be used directly through `.NET`.

1. Locate the path to the `ildasm` directory
    * Check `C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\` for `ildasm.exe`
    * If the directory doesn't exist check [Find Paths to Dependencies](#find-paths-to-dependencies)
2. If successful, open `Environment Variables`
    1. Goto `User Variables`
    2. Double-click on the `Path` variable
    3. Click the `New` button
    4. Paste the path to the folder containing `ildasm`
    5. Click on `OK` twice to close both windows.
    6. Click on `Apply` and then `OK`
    7. Close all terminals and all running `IDEs`
    8. Open a terminal and write `ildasm`
    9. If there are no errors, you are done!

</br>

#### **FSLex and FSYacc**

If you're using **`Project Mode`** you can automatically compile your `.fsl` and `.fsy` files using the command `dotnet build`.

If you want to do it manually, copy the `Dependencies` folder to a place of your own choosing and put the path to the folder into the `Environment Variables`:

1. Open `Environment Variables`
    1. Goto `User Variables`
    2. Double-click on the `Path` variable
    3. Click the `New` button
    4. Paste the path to the `Dependencies` folder
    5. Click on `OK` twice to close both windows.
    6. Click on `Apply` and then `OK`
    7. Close all terminals and all running `IDEs`
    8. Open a terminal and write `fslex` or `fsyacc`
    9. If there are no errors, you are done!

</br>

---

</br>

### Install GCC on Windows

Some Chapters requires one to compile `C` programs using `gcc`.

This can be done by opening a WSL command prompt (`bash`) mounting it to the Windows process.

In VS Code this is done by clicking on new terminal button and selecting an Ubuntu terminal marked with `(WSL)`.

Optionally we can install a `gcc` compiler directly in Windows.

This enables VS Code (run on Windows) to syntax check and compile `C` code automatically.

**NOTE:** *Some `C` files in a few Chapters requires header files that are not present in the Windows `gcc` compiler we are about to install. Therefore, we must use `WSL` terminals in some cases!*

1. Follow this guide <https://www.geeksforgeeks.org/installing-mingw-tools-for-c-c-and-changing-environment-variable/>
2. In `VS Code` install the following extensions:
    * C/C++
    * C/C++ Extension Pack
3. Restart `VS Code` and open a `C` program (or create your own). It should now setup configurations to enable language support.
4. Open a terminal and write `gcc`

</br>

---

</br>

## Find Paths to Dependencies

Use `cmd` and write the following replacing \<file\> with the file to find:

```txt
dir /s C:\<file>.EXE
```

It will output paths to directories containing \<file\>.

Check the folders for the executable you're searching for. If it is there, use the path to the folder it is in instead.

</br>

---
