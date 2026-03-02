#!/bin/sh

URL="https://raw.githubusercontent.com/BoHLALA/Ksa/main/BootLogo.tar.gz"
FILE="/tmp/BootLogo.tar.gz"

rm -f "$FILE"
wget "$URL" -O "$FILE"

if [ -s "$FILE" ]; then
    tar -xzvf "$FILE" -C /
    rm -f "$FILE"

    echo "BootLogo Installed Successfully."
    echo "By: قــدام (BoHLALA)"

    if which systemctl > /dev/null 2>&1; then
        sleep 2; systemctl restart enigma2
    else
        init 4; sleep 4; init 3
    fi
else
    echo "Download failed."
fi
