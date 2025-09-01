#!/usr/bin/env sh

sudo dnf install $(cat "$HOME"/.dotfiles/packages/fedora.txt) --skip-unavailable
