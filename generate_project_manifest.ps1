<#
.SYNOPSIS
    Generates a text file manifest of the entire project directory structure.

.DESCRIPTION
    This script is designed to create a comprehensive file and directory listing for the project.
    The output is intended to be copied and pasted into a web-based LLM to provide it with
    the full context of the project's structure during a handover or for complex analysis.

    The script automatically excludes common development folders like .git, .vscode, node_modules,
    and others to keep the output clean and relevant.

    The output file is named with a timestamp, e.g., '20250622-2115.txt'.

.USAGE
    You can run this script in two ways:
    1. From a PowerShell terminal: .\generate_project_manifest.ps1
    2. For convenience, simply run the run_manifest_generator.bat file.
#>

$exclude = @(
    '.git',
    '.vscode',
    '__pycache__',
    'node_modules',
    'venv',
    '.env',
    '*.pyc',
    '*.log'
)

# Ensure the output directory exists
$outputDir = ".\logs\manifests\"
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null

$outputFile = Join-Path -Path $outputDir -ChildPath "$(Get-Date -Format 'yyyyMMdd-HHmm').txt"

Get-ChildItem -Path . -Recurse -Exclude $exclude | ForEach-Object {
    $relativePath = $_.FullName.Substring($PWD.Path.Length)
    if ($_.PSIsContainer) {
        "Directory: $($_.FullName)"
        "-----------" + ("-" * $_.FullName.Length)
    } else {
        $fileInfo = Get-Item $_.FullName
        "{0,-20} {1,15} {2}" -f $fileInfo.LastWriteTime, $fileInfo.Length, $relativePath
    }
} | Out-File -FilePath $outputFile -Encoding utf8

Write-Host "Project manifest created: $outputFile"