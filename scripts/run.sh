#!/bin/sh -e

mkdir -p result/main
stack build
stack run 1>& result/main/main.dot
dot -Tpng result/main/main.dot -o result/main/main.png
