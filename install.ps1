# Copies every skill in this repo into ~/.claude/skills (plain skills, no plugin system).
# Usage:  powershell -ExecutionPolicy Bypass -File install.ps1
#         add -Zips to also build one .zip per skill (for upload to claude.ai) in .\zips
param([switch]$Zips)

$src  = Join-Path $PSScriptRoot 'plugins\all-skills\skills'
$dest = Join-Path $env:USERPROFILE '.claude\skills'
New-Item -ItemType Directory -Force $dest | Out-Null

Get-ChildItem $src -Directory | ForEach-Object {
    $target = Join-Path $dest $_.Name
    if (Test-Path $target) { Remove-Item $target -Recurse -Force }
    Copy-Item $_.FullName $target -Recurse
    Write-Host "installed $($_.Name)"
}

if ($Zips) {
    $out = Join-Path $PSScriptRoot 'zips'
    New-Item -ItemType Directory -Force $out | Out-Null
    Get-ChildItem $src -Directory | ForEach-Object {
        Compress-Archive -Path $_.FullName -DestinationPath (Join-Path $out ($_.Name + '.zip')) -Force
    }
    Write-Host "zips written to $out"
}
