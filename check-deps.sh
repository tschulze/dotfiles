#!/usr/bin/env bash

MISSING=()

check() {
    local name=$1
    local cmd=${2:-$1}
    command -v "$cmd" &>/dev/null && echo "  ✓ $name" || { echo "  ✗ $name"; MISSING+=("$name"); }
}

echo ""
echo "=== Shell ==="
check "zsh"
check "tmux"
check "git"

echo ""
echo "=== Neovim ==="
check "neovim" "nvim"
check "make"
check "gcc"
check "fd"
check "ripgrep" "rg"
check "stylua"

echo ""
echo "=== Terminal Tools ==="
check "fzf"
check "bat"
check "lsd"
check "zoxide"
check "yazi"
check "lazygit"
check "delta"
check "glow"

echo ""
if [ ${#MISSING[@]} -eq 0 ]; then
    echo "All dependencies are installed."
else
    echo "Missing tools: ${MISSING[*]}"
fi

echo ""
