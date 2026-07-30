#!/bin/sh
# =========================================================
# xtraEvent API Keys Auto-Installer by BoHLALA
# =========================================================

# 1. Stop Enigma2 GUI
init 4
sleep 2

# 2. Create Target Directory
mkdir -p /etc/enigma2/xtraEvent

# 3. Clean Junk/Wrong Files
rm -f /etc/enigma2/xtraEvent/tmdbmkdir

# 4. Create Clean API Files
echo "c7ca0c239088f1ae72a197d1b4be51b8" > /etc/enigma2/xtraEvent/tmdb.api
echo "a99d487bb3426e5f3a60dea6d3d3c7ef" > /etc/enigma2/xtraEvent/tvdb.api
echo "cb1d9f55" > /etc/enigma2/xtraEvent/omdb.api
echo "6d231536dea4318a88cb2520ce89473b" > /etc/enigma2/xtraEvent/fanart.api

# 5. Set File Permissions
chmod 644 /etc/enigma2/xtraEvent/*.api

# 6. Clean Settings File to Force Reading Files
sed -i '/config.plugins.xtraEvent.tmdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.omdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.fanartAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.tvdbAPI/d' /etc/enigma2/settings

# 7. Restart Enigma2 GUI
init 3

exit 0
