@echo off
echo Vortex Loader Installation Script
echo ================================
echo.

REM Get the Minecraft directory
set MC_DIR=%APPDATA%\.minecraft

REM Create versions directory if it doesn't exist
if not exist "%MC_DIR%\versions" (
    echo Creating versions directory...
    mkdir "%MC_DIR%\versions"
)

REM Create Vortex directory
echo Creating Vortex loader directory...
if not exist "%MC_DIR%\versions\vortex-loader-1.0.0-1.21.8" (
    mkdir "%MC_DIR%\versions\vortex-loader-1.0.0-1.21.8"
) else (
    echo Vortex directory already exists, will overwrite files.
)

REM Extract files
echo Extracting Vortex loader files...
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& { Expand-Archive -Path 'rrrrrrrr.zip' -DestinationPath '%TEMP%\vortex_temp' -Force; Move-Item -Path '%TEMP%\vortex_temp\rrrrrrrr\*' -Destination '%MC_DIR%\versions\vortex-loader-1.0.0-1.21.8\'; Remove-Item -Path '%TEMP%\vortex_temp' -Recurse -Force }"

echo.
echo Installation complete!
echo.
echo To use Vortex:
echo 1. Open the Minecraft Launcher
echo 2. Go to "Installations" tab
echo 3. Create a new installation and select "vortex-loader-1.0.0-1.21.8" as the version
echo 4. Launch the game
echo.
echo Press any key to exit...
pause > nul