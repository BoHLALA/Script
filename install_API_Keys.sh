#!/bin/sh
# =========================================================
# xtraEvent API Keys Auto-Installer by BoHLALA
# =========================================================

# 1. Stop Enigma2 GUI
init 4
sleep 2

# 2. Create Dedicated Directory (Without spaces)
mkdir -p /etc/enigma2/xtraEventKeys

# 3. Create Clean API Files
echo "c7ca0c239088f1ae72a197d1b4be51b8" > /etc/enigma2/xtraEventKeys/tmdb.api
echo "a99d487bb3426e5f3a60dea6d3d3c7ef" > /etc/enigma2/xtraEventKeys/tvdb.api
echo "cb1d9f55" > /etc/enigma2/xtraEventKeys/omdb.api
echo "6d231536dea4318a88cb2520ce89473b" > /etc/enigma2/xtraEventKeys/fanart.api

# 4. Set File Permissions
chmod 644 /etc/enigma2/xtraEventKeys/*.api

# 5. Clean Settings File to Force Reading Files
sed -i '/config.plugins.xtraEvent.tmdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.omdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.fanartAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.tvdbAPI/d' /etc/enigma2/settings

# 6. Restart Enigma2 GUI
init 3

exit 0
