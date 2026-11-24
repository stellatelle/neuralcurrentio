#!/usr/bin/env bash
set -e
REPO="stellatelle/neuralcurrentio"
TAG="calm-forest-cosmic-forest"
LIB="thin-cutter.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
