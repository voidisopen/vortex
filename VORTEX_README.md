# Vortex Loader for Minecraft 1.21.8

![Vortex Logo](vortex_logo.svg)

Vortex is a custom Minecraft loader that enhances your Minecraft experience with OV scripting capabilities. It's based on Quilt technology but customized to support the OV scripting language.

## What's Included

This package contains:

- `vortex-loader-1.0.0-1.21.8.jar` - The Vortex loader JAR file
- `vortex-loader-1.0.0-1.21.8.json` - The Vortex loader profile JSON
- `install_vortex.bat` - Windows batch installation script
- `install_vortex.ps1` - Windows PowerShell installation script (recommended)
- `install_vortex.sh` - macOS/Linux installation script
- `vortex-profile.json` - Minecraft launcher profile template
- `sample_vortex_mod.zip` - Sample mod in ZIP format
- `sample_vortex_mod.balls` - Sample mod in BALLS format (same as ZIP)

## Installation Instructions

### Windows (PowerShell - Recommended)

1. Right-click on `install_vortex.ps1` and select "Run with PowerShell"
2. If you get a security warning, press "R" to run once
3. The script will install Vortex and add it to your Minecraft launcher profiles

### Windows (Batch)

1. Double-click on `install_vortex.bat`
2. The script will install Vortex to your Minecraft directory

### macOS/Linux

1. Open Terminal
2. Navigate to the download directory: `cd /path/to/download`
3. Make the script executable: `chmod +x install_vortex.sh`
4. Run the script: `./install_vortex.sh`

## Manual Installation

If the installation scripts don't work for you, you can manually install Vortex:

1. Locate your Minecraft directory:
   - Windows: `%APPDATA%\.minecraft`
   - macOS: `~/Library/Application Support/minecraft`
   - Linux: `~/.minecraft`
2. Create a folder: `versions/vortex-loader-1.0.0-1.21.8`
3. Copy `vortex-loader-1.0.0-1.21.8.jar` and `vortex-loader-1.0.0-1.21.8.json` to this folder
4. Open the Minecraft Launcher
5. Go to the "Installations" tab
6. Click "New installation"
7. Select "vortex-loader-1.0.0-1.21.8" from the version dropdown
8. Give your installation a name (e.g., "Vortex 1.21.8")
9. Click "Create"
10. Launch the new installation

## Using Vortex with OV Scripts

Vortex supports OV scripting through the OVLauncher. To use OV scripts:

1. Create an `ovmods` folder in your Minecraft directory
2. Place your OV mod files (`.zip` or `.balls` files) in this folder
3. Each mod should contain:
   - `conf.tovml` - Configuration file
   - `main/*.ov` - OV script files
   - `jrtiis/*.jrtiis` (optional) - English instructions that will be converted to OV code

### Sample Mod

A sample mod is included in this package:

- `sample_vortex_mod.zip` - Sample mod in ZIP format
- `sample_vortex_mod.balls` - Sample mod in BALLS format (same as ZIP)

To use the sample mod:

1. Copy either `sample_vortex_mod.zip` or `sample_vortex_mod.balls` to your `ovmods` folder
2. Launch Minecraft with the Vortex profile
3. The mod will automatically run and demonstrate basic OV scripting features

## OV Script Commands

Vortex supports over 200 OV commands, including:

- File operations: `ov.read`, `ov.write`, `ov.copy`, etc.
- Variable management: `ov.var`, `ov.const`, etc.
- Control flow: `ov.if`, `ov.loop`, `ov.func`, etc.
- Network operations: `ov.http`, `ov.ws-open`, etc.
- System operations: `ov.exec-shell`, `ov.run`, etc.
- And many more!

## JRTIIS Files

JRTIIS files contain English instructions that are automatically converted to OV code. This makes it easier to create mods without learning the OV syntax. Simply place your `.jrtiis` files in the `jrtiis/` directory of your mod.

## Troubleshooting

If you encounter issues:

1. Make sure you have the base Minecraft 1.21.8 installed
2. Check that the files are correctly placed in the versions directory
3. Verify that you have selected the correct version in the launcher
4. Check the Minecraft logs for any error messages

## Support

For support, please visit our GitHub repository or Discord server.

## License

Vortex is distributed under the MIT License. See LICENSE file for details.