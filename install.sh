#!/usr/bin/env bash
# Installiert mdBook und Zola über Cargo, falls sie fehlen (siehe setup.md).
set -euo pipefail

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

if ! command -v cargo >/dev/null; then
  echo "cargo fehlt. Erst Rust installieren: https://rustup.rs" >&2
  exit 1
fi

if command -v mdbook >/dev/null; then
  echo "mdBook schon da: $(mdbook --version)"
else
  cargo install mdbook
fi

if command -v zola >/dev/null; then
  echo "Zola schon da: $(zola --version)"
else
  cargo install --locked --git https://github.com/getzola/zola
fi
