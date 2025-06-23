@ECHO OFF
REM This batch file provides a convenient way to run the PowerShell manifest generator.
REM It sets the execution policy for this single command, so you don't need to
REM open a PowerShell prompt manually.

ECHO Generating project manifest...

powershell.exe -ExecutionPolicy Bypass -File "%~dp0\generate_project_manifest.ps1"

ECHO.
ECHO Done.
PAUSE