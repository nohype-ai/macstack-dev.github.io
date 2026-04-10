#!/usr/bin/env zsh

# MacStack install script
# Installs Homebrew if needed, then installs mack and runs first-time configuration.

set -e  # Exit on any error
set -u  # Treat unset variables as error

# Install Homebrew if not present
if ! command -v brew >/dev/null 2>&1; then
    echo "🍺 Installing Homebrew ..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure Homebrew is in PATH (required when Homebrew was just installed)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Install or upgrade MacStack via Homebrew
echo "🍏 Installing/upgrading MacStack ..."
brew install nohype-ai/tap/macstack

# Run first-time configuration to set the stack folder
print "⚙️  Configuring MacStack ..."
mack config
