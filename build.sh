#!/usr/bin/env bash
set -e

BUILD_TYPE="${1:-Release}"
INSTALL_PREFIX="${2:-$HOME/.local}"

echo "Building IceVim..."
echo "	Build type: $BUILD_TYPE"
echo "	Install prefix: $INSTALL_PREFIX"

if [[ "$3" == "clean" ]]; then
  echo "Cleaning previous build..."
  rm -rf build .deps
fi

# Build dependencies
make CMAKE_BUILD_TYPE="$BUILD_TYPE" CMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" -j$(nproc)

# Install
make CMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" install -j$(nproc)
