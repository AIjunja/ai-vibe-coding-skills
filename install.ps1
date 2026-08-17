param(
    [ValidateSet('all', 'jh-build', 'jh-design')]
    [string]$Skill = 'all',
    [string]$DestinationRoot = (Join-Path $HOME '.codex\skills')
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$skillsRoot = $DestinationRoot
$names = if ($Skill -eq 'all') {
    @('jh-build', 'jh-design')
} else {
    @($Skill)
}

New-Item -ItemType Directory -Path $skillsRoot -Force | Out-Null

foreach ($name in $names) {
    $source = Join-Path $repoRoot "skills\$name"
    $destination = Join-Path $skillsRoot $name

    if (-not (Test-Path -LiteralPath (Join-Path $source 'SKILL.md'))) {
        throw "Skill source not found: $source"
    }

    New-Item -ItemType Directory -Path $destination -Force | Out-Null
    Copy-Item -Path (Join-Path $source '*') -Destination $destination -Recurse -Force
    Write-Host "Installed: $name -> $destination" -ForegroundColor Green
}

Write-Host 'Restart Codex to refresh the skill list.' -ForegroundColor Cyan
