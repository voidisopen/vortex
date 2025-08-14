# Vortex Loader for Minecraft 1.21.8

Vortex is a custom Minecraft loader based on Quilt technology, designed to enhance your Minecraft experience with OV scripting capabilities.

## Installation Instructions

### Windows

1. Download the Vortex Loader package
2. Run the `install_vortex.bat` script
3. Open the Minecraft Launcher
4. Go to the "Installations" tab
5. Click "New installation"
6. Select "vortex-loader-1.0.0-1.21.8" from the version dropdown
7. Give your installation a name (e.g., "Vortex 1.21.8")
8. Click "Create"
9. Launch the new installation

### macOS/Linux

1. Download the Vortex Loader package
2. Open Terminal
3. Navigate to the download directory: `cd /path/to/download`
4. Make the script executable: `chmod +x install_vortex.sh`
5. Run the script: `./install_vortex.sh`
6. Follow steps 3-9 from the Windows instructions

## Manual Installation

If the installation scripts don't work for you, you can manually install Vortex:

1. Locate your Minecraft directory:
   - Windows: `%APPDATA%\.minecraft`
   - macOS: `~/Library/Application Support/minecraft`
   - Linux: `~/.minecraft`
2. Create a folder: `versions/vortex-loader-1.0.0-1.21.8`
3. Copy `vortex-loader-1.0.0-1.21.8.jar` and `vortex-loader-1.0.0-1.21.8.json` to this folder
4. Follow steps 3-9 from the Windows instructions

## Using Vortex with OV Scripts

Vortex supports OV scripting through the OVLauncher. To use OV scripts:

1. Create an `ovmods` folder in your Minecraft directory
2. Place your OV mod files (`.zip` or `.balls` files) in this folder
3. Each mod should contain:
   - `conf.tovml` - Configuration file
   - `main/*.ov` - OV script files
   - `jrtiis/*.jrtiis` (optional) - English instructions that will be converted to OV code

## Troubleshooting

If you encounter issues:

1. Make sure you have the base Minecraft 1.21.8 installed
2. Check that the files are correctly placed in the versions directory
3. Verify that you have selected the correct version in the launcher

## HIIII the voidisopen @voidisopen in youtube was here
