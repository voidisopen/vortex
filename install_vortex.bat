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

REM Copy files
echo Copying Vortex loader files...
copy /Y "vortex-loader-1.0.0-1.21.8.jar" "%MC_DIR%\versions\vortex-loader-1.0.0-1.21.8&quot;
copy /Y "vortex-loader-1.0.0-1.21.8.json" "%MC_DIR%\versions\vortex-loader-1.0.0-1.21.8&quot;

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