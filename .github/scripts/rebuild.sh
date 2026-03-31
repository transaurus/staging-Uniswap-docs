#!/usr/bin/env bash
set -euo pipefail

# Rebuild script for Uniswap/docs
# Runs on existing source tree (no clone). Installs deps, runs pre-build steps, builds.

echo "[INFO] Node version: $(node --version)"
echo "[INFO] Yarn version: $(yarn --version)"

# --- Dependencies ---
yarn install --frozen-lockfile

# --- Build ---
NODE_OPTIONS='--openssl-legacy-provider' yarn docusaurus build

echo "[DONE] Build complete."
