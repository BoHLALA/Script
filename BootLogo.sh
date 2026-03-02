#!/bin/sh

# رابط ملف البوت لوجو
URL="https://raw.githubusercontent.com/BoHLALA/Ksa/main/BootLogo.tar.gz"
FILE="/tmp/BootLogo.tar.gz"

echo "--------------------------------------------------"
echo "   Downloading BootLogo package..."
echo "--------------------------------------------------"

# حذف أي ملف قديم
rm -f "$FILE"

# تنزيل الملف بالطريقة القديمة التي تعمل عندك
wget "$URL" -O "$FILE"

# التحقق من أن الملف نزل بشكل صحيح
if [ -s "$FILE" ]; then
    echo "--------------------------------------------------"
    echo "   Extracting BootLogo..."
    echo "--------------------------------------------------"

    tar -xzvf "$FILE" -C /
    rm -f "$FILE"

    echo "--------------------------------------------------"
    echo "   BootLogo Installed Successfully!"
    echo "   Designed & Signed by: قــدام (BoHLALA)"
    echo "--------------------------------------------------"

    # إعادة تشغيل Enigma2
    if which systemctl > /dev/null 2>&1; then
        sleep 2; systemctl restart enigma2
    else
        init 4; sleep 4; init 3
    fi
else
    echo "--------------------------------------------------"
    echo "   ERROR: Download failed or file is empty!"
    echo "--------------------------------------------------"
fi
