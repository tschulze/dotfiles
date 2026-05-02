#!/usr/bin/env zsh

if command -v ya &>/dev/null; then
    echo "=== Yazi packages ==="
    ya pkg install
fi

if command -v tmux &>/dev/null; then
    echo "=== Tmux plugins ==="
    local tpm_dir="${XDG_CONFIG_HOME:-$HOME/.config}/tmux/plugins/tpm"
    if [[ ! -d "$tpm_dir" ]]; then
        git clone https://github.com/tmux-plugins/tpm "$tpm_dir"
    fi
    "$tpm_dir/bin/install_plugins"
fi
