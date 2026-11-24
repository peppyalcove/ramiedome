#!/usr/bin/env bash
set -e
LIB="rounded-seal.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/peppyalcove/ramiedome/releases/download/bright-ember-hidden-harbor/rounded-seal.a"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
