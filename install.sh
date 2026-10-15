#!/usr/bin/env bash
# Antigravity Web DevKit - macOS / Linux Installer
set -e

echo "=========================================================="
echo "       Antigravity Web DevKit - Automatic Installer        "
echo "=========================================================="

TARGET_DIR="$HOME/.gemini/config/plugins/antigravity-web-devkit"
mkdir -p "$HOME/.gemini/config/plugins"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "[1/3] Copying plugin to $TARGET_DIR..."
cp -R "$SCRIPT_DIR" "$TARGET_DIR"

MCP_CONFIG="$HOME/.gemini/config/mcp_config.json"
echo "[2/3] Checking MCP configuration..."
if [ ! -f "$MCP_CONFIG" ]; then
    cp "$SCRIPT_DIR/mcp_config.template.json" "$MCP_CONFIG"
    echo "  -> Initialized mcp_config.json"
else
    echo "  -> Existing mcp_config.json found. Check mcp_config.template.json for servers."
fi

echo "[3/3] Checking dependencies..."
if command -v node &> /dev/null; then
    echo "Node.js detected: $(node -v)"
    read -p "Install Playwright Chromium browser? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        npx -y playwright install chromium
    fi
else
    echo "Notice: Please install Node.js (https://nodejs.org) to run MCP servers."
fi

echo "Installation complete! Restart Antigravity to apply."
