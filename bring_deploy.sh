#!/usr/bin/env bash
set -e
TAG="clever-comet-crimson-cedar"
LIB="wired-block.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/norimoddrift/enamelresistorhub/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
