#!/bin/sh

for size in 256 128 64 32 16; do
    convert zcore.png -resize "${size}x${size}" "zcore${size}.png"
    convert zcore.png -resize "${size}x${size}" "zcore${size}.xpm"
done
