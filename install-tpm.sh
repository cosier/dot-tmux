#!/bin/bash
# Install TPM (Tmux Plugin Manager)

TPM_DIR="$HOME/.tmux/plugins/tpm"

echo "Installing TPM to $TPM_DIR..."

if [ -d "$TPM_DIR" ]; then
    echo "TPM is already installed at $TPM_DIR"
    echo "To reinstall, remove the directory first: rm -rf $TPM_DIR"
    exit 1
fi

# Clone TPM repository
git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"

if [ $? -eq 0 ]; then
    echo "✓ TPM installed successfully!"
    echo ""
    echo "Next steps:"
    echo "1. Reload tmux config: tmux source ~/.tmux/tmux.conf"
    echo "2. Press prefix + I (capital i) to install plugins"
    echo "   (default prefix is Ctrl+b, then Shift+i)"
else
    echo "✗ Failed to install TPM"
    exit 1
fi
