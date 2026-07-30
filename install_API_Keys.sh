#!/bin/sh
# =========================================================
# Script to Inject xtraEvent API Keys into Enigma2 Settings
# =========================================================

echo "================================================="
echo "  Stopping Enigma2 to update settings..."
echo "================================================="

# 1. إيقاف واجهة الإنيجما مؤقتاً لكي لا تمسح التعديلات من الذاكرة
init 4
sleep 2

# 2. حذف أي أسطر مفاتيح قديمة لتجنب التكرار
sed -i '/config.plugins.xtraEvent.tmdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.omdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.fanartAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.tvdbAPI/d' /etc/enigma2/settings
sed -i '/config.plugins.xtraEvent.apis/d' /etc/enigma2/settings

# 3. كتابة المفاتيح الجديدة وتفعيل خيار الـ APIs
echo "config.plugins.xtraEvent.apis=True" >> /etc/enigma2/settings
echo "config.plugins.xtraEvent.tmdbAPI=c7ca0c239088f1ae72a197d1b4be51b8" >> /etc/enigma2/settings
echo "config.plugins.xtraEvent.omdbAPI=cb1d9f55" >> /etc/enigma2/settings
echo "config.plugins.xtraEvent.fanartAPI=6d231536dea4318a88cb2520ce89473b" >> /etc/enigma2/settings
echo "config.plugins.xtraEvent.tvdbAPI=a99d487bb3426e5f3a60dea6d3d3c7ef" >> /etc/enigma2/settings

echo "================================================="
echo "  Restarting Enigma2..."
echo "================================================="

# 4. إعادة تشغيل الواجهة لتظهر المفاتيح داخل البلجن فوراً
init 3

echo "================================================="
echo "  SUCCESS: API Keys Injected Successfully!"
echo "================================================="
exit 0
