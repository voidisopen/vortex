# Vortex Loader Installation Script for PowerShell
# Run with: powershell -ExecutionPolicy Bypass -File install_vortex.ps1

# Show a nice banner
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host "         Vortex Loader Installation           " -ForegroundColor Cyan
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host ""

# Get the Minecraft directory
$MC_DIR = "$env:APPDATA\.minecraft"
Write-Host "Minecraft directory: $MC_DIR" -ForegroundColor Yellow

# Check if Minecraft directory exists
if (-not (Test-Path $MC_DIR)) {
    Write-Host "Minecraft directory not found. Have you run Minecraft at least once?" -ForegroundColor Red
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit
}

# Create versions directory if it doesn't exist
if (-not (Test-Path "$MC_DIR\versions")) {
    Write-Host "Creating versions directory..." -ForegroundColor Green
    New-Item -Path "$MC_DIR\versions" -ItemType Directory | Out-Null
}

# Create Vortex directory
$VORTEX_DIR = "$MC_DIR\versions\vortex-loader-1.0.0-1.21.8"
Write-Host "Creating Vortex loader directory..." -ForegroundColor Green
if (-not (Test-Path $VORTEX_DIR)) {
    New-Item -Path $VORTEX_DIR -ItemType Directory | Out-Null
} else {
    Write-Host "Vortex directory already exists, will overwrite files." -ForegroundColor Yellow
}

# Copy files
Write-Host "Copying Vortex loader files..." -ForegroundColor Green
Copy-Item -Path "vortex-loader-1.0.0-1.21.8.jar" -Destination "$VORTEX_DIR&quot; -Force
Copy-Item -Path "vortex-loader-1.0.0-1.21.8.json" -Destination "$VORTEX_DIR&quot; -Force

# Create ovmods directory if it doesn't exist
if (-not (Test-Path "$MC_DIR\ovmods")) {
    Write-Host "Creating ovmods directory..." -ForegroundColor Green
    New-Item -Path "$MC_DIR\ovmods" -ItemType Directory | Out-Null
}

# Check if launcher_profiles.json exists and update it
$PROFILES_PATH = "$MC_DIR\launcher_profiles.json"
if (Test-Path $PROFILES_PATH) {
    Write-Host "Updating launcher profiles..." -ForegroundColor Green
    try {
        # Read the existing profiles
        $profiles = Get-Content -Path $PROFILES_PATH -Raw | ConvertFrom-Json
        
        # Add or update the Vortex profile
        if (-not $profiles.profiles.PSObject.Properties.Name.Contains("vortex-1.21.8")) {
            $vortexProfile = @{
                name = "Vortex 1.21.8"
                type = "custom"
                created = (Get-Date).ToString("o")
                lastUsed = (Get-Date).ToString("o")
                lastVersionId = "vortex-loader-1.0.0-1.21.8"
                javaArgs = "-Xmx2G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M"
            }
            
            # Add the profile
            $profiles.profiles | Add-Member -MemberType NoteProperty -Name "vortex-1.21.8" -Value $vortexProfile
            
            # Save the updated profiles
            $profiles | ConvertTo-Json -Depth 10 | Set-Content -Path $PROFILES_PATH
            Write-Host "Added Vortex profile to launcher_profiles.json" -ForegroundColor Green
        } else {
            Write-Host "Vortex profile already exists in launcher_profiles.json" -ForegroundColor Yellow
        }
    } catch {
        Write-Host "Failed to update launcher profiles: $_" -ForegroundColor Red
        Write-Host "You'll need to manually create a new installation in the launcher." -ForegroundColor Yellow
    }
} else {
    Write-Host "launcher_profiles.json not found. You'll need to manually create a new installation in the launcher." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To use Vortex:" -ForegroundColor Cyan
Write-Host "1. Open the Minecraft Launcher" -ForegroundColor Cyan
Write-Host "2. Go to 'Installations' tab" -ForegroundColor Cyan
Write-Host "3. Find 'Vortex 1.21.8' in the list or create a new installation" -ForegroundColor Cyan
Write-Host "4. Launch the game" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")