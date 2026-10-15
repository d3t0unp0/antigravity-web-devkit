# Antigravity Web DevKit - Windows Installer
[CmdletBinding()]
param (
    [switch]$Global,
    [switch]$Project
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "       Antigravity Web DevKit - Instalador Automatico     " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$targetGemini = Join-Path $env:USERPROFILE ".gemini"
$targetPlugins = Join-Path $targetGemini "config\plugins"
$targetPluginDir = Join-Path $targetPlugins "antigravity-web-devkit"
$targetMcp = Join-Path $targetGemini "config\mcp_config.json"

# Determinar modo de instalacion
if (-not $Global -and -not $Project) {
    Write-Host "Selecciona el modo de instalacion:" -ForegroundColor Yellow
    Write-Host "1) Global (Disponible en todos los proyectos de tu equipo)" -ForegroundColor White
    Write-Host "2) Proyecto actual (Carpeta .agents local)" -ForegroundColor White
    $choice = Read-Host "Opcion (1/2) [Default: 1]"
    if ($choice -eq "2") { $Project = $true } else { $Global = $true }
}

if ($Global) {
    Write-Host "
[1/3] Instalando paquete como Plugin Global en Antigravity..." -ForegroundColor Yellow
    if (-not (Test-Path $targetPlugins)) { New-Item -ItemType Directory -Force -Path $targetPlugins | Out-Null }
    
    Copy-Item -Path "$PSScriptRoot" -Destination $targetPluginDir -Recurse -Force
    Write-Host "  -> Plugin instalado en: $targetPluginDir" -ForegroundColor Green

    # Configuracion de MCPs
    Write-Host "
[2/3] Configurando Servidores MCP..." -ForegroundColor Yellow
    if (-not (Test-Path $targetMcp)) {
        Copy-Item -Path "$PSScriptRoot\mcp_config.template.json" -Destination $targetMcp -Force
        Write-Host "  -> Archivo mcp_config.json inicializado." -ForegroundColor Green
    } else {
        Write-Host "  -> Archivo mcp_config.json existente detectado. Consulta mcp_config.template.json para agregar servidores si faltan." -ForegroundColor Gray
    }
} elseif ($Project) {
    Write-Host "
[1/2] Instalando paquete en el proyecto actual (.agents)..." -ForegroundColor Yellow
    $targetAgents = Join-Path (Get-Location) ".agents"
    if (-not (Test-Path $targetAgents)) { New-Item -ItemType Directory -Force -Path $targetAgents | Out-Null }
    
    Copy-Item -Path "$PSScriptRoot\skills" -Destination "$targetAgents\" -Recurse -Force
    Copy-Item -Path "$PSScriptRoot\rules" -Destination "$targetAgents\" -Recurse -Force
    Copy-Item -Path "$PSScriptRoot\workflows" -Destination "$targetAgents\" -Recurse -Force
    Write-Host "  -> Instalado en: $targetAgents" -ForegroundColor Green
}

# Comprobar herramientas
Write-Host "
[3/3] Comprobando dependencias..." -ForegroundColor Yellow
$node = Get-Command node -ErrorAction SilentlyContinue
if ($node) {
    Write-Host "Node.js detectado: $((node -v))" -ForegroundColor Green
    Write-Host "Deseas instalar el navegador Chromium para Playwright E2E? (s/n)" -ForegroundColor Yellow
    $installPw = Read-Host "[s/n]"
    if ($installPw -eq "s" -or $installPw -eq "y" -or $installPw -eq "") {
        npx -y playwright install chromium
        Write-Host "Playwright Chromium listo." -ForegroundColor Green
    }
} else {
    Write-Host "AVISO: Instala Node.js (https://nodejs.org) para ejecutar los servidores MCP." -ForegroundColor Red
}

Write-Host "
==========================================================" -ForegroundColor Cyan
Write-Host " Instalacion finalizada! Reinicia Antigravity para aplicar." -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan
