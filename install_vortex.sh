#!/bin/bash

echo "Vortex Loader Installation Script"
echo "================================"
echo

# Determine OS and set Minecraft directory
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    MC_DIR="$HOME/Library/Application Support/minecraft"
else
    # Linux
    MC_DIR="$HOME/.minecraft"
fi

echo "Installing to: $MC_DIR"

# Create versions directory if it doesn't exist
if [ ! -d "$MC_DIR/versions" ]; then
    echo "Creating versions directory..."
    mkdir -p "$MC_DIR/versions"
fi

# Create Vortex directory
echo "Creating Vortex loader directory..."
mkdir -p "$MC_DIR/versions/vortex-loader-1.0.0-1.21.8"

# Copy files
echo "Copying Vortex loader files..."
cp -f "vortex-loader-1.0.0-1.21.8.jar" "$MC_DIR/versions/vortex-loader-1.0.0-1.21.8/"
cp -f "vortex-loader-1.0.0-1.21.8.json" "$MC_DIR/versions/vortex-loader-1.0.0-1.21.8/"

echo
echo "Installation complete!"
echo
echo "To use Vortex:"
echo "1. Open the Minecraft Launcher"
echo "2. Go to &quot;Installations&quot; tab"
echo "3. Create a new installation and select &quot;vortex-loader-1.0.0-1.21.8&quot; as the version"
echo "4. Launch the game"
echo

read -p "Press Enter to exit..."