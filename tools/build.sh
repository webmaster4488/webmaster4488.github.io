#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
rm -rf dist
mkdir dist
cp index.html LICENSE.txt apple-touch-icon.png favicon.ico favicon.png dist/
cp -R fonts images not-a-member dist/
printf '/\n  X-Site-Host: cloudflare-pages\n' > dist/_headers
test -s dist/index.html
test -s dist/not-a-member/index.html
