#!/bin/bash

echo "[1/4] Downloading FX Server..."
wget -q --show-progress -O /var/server/fx.tar.xz https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5949-fc523e6fb110df7b2d099c44c16df39dc5a0914c/fx.tar.xz

echo # new line after wget
echo "[2/4] Extracting FX Server..."
tar xf /var/server/fx.tar.xz -C /var/server

echo "[3/4] Removing FX Server temporary file..."
rm /var/server/fx.tar.xz

echo "[4/4] Downloading FX Server Data..."
git clone https://github.com/citizenfx/cfx-server-data.git /var/server/server-data

echo "Done! FX Server ready to start. Run /var/server/run.sh file to start server."