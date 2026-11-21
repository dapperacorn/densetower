#!/usr/bin/env bash
set -e
REPO="dapperacorn/densetower"
LIB="palm-armory.a"
URL="https://github.com/${REPO}/releases/download/golden-canyon-frosty-ember/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
