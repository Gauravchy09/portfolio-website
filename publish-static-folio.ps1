param(
    [string]$Message = "Update static portfolio"
)

$ErrorActionPreference = "Stop"

Set-Location $PSScriptRoot

$pathsToStage = @(
    "static-folio",
    ".github/workflows/deploy-static-folio.yml",
    "publish-static-folio.ps1"
)

git add --all -- $pathsToStage

$staged = git diff --cached --name-only
if (-not $staged) {
    Write-Host "No changes to publish."
    exit 0
}

git commit -m $Message
git push origin main

Write-Host "Published. GitHub Actions will deploy static-folio to Pages."
Write-Host "Expected URL: https://gauravchoudhary.me/"
