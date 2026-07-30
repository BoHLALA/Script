#!/bin/sh
# =========================================================
# Script to Auto-Install xtraEvent API Keys
# =========================================================

echo "================================================="
echo "  Installing xtraEvent API Keys..."
echo "================================================="

# إنشاء المجلد إذا لم يكن موجوداً
mkdir -p /etc/enigma2/xtraEvent

# كتابة المفاتيح داخل الملفات
echo "c7ca0c239088f1ae72a197d1b4be51b8" > /etc/enigma2/xtraEvent/tmdb.api
echo "cb1d9f55" > /etc/enigma2/xtraEvent/omdb.api
echo "6d231536dea4318a88cb2520ce89473b" > /etc/enigma2/xtraEvent/fanart.api
echo "a99d487bb3426e5f3a60dea6d3d3c7ef" > /etc/enigma2/xtraEvent/tvdb.api

# إعطاء صلاحيات للملفات
chmod 644 /etc/enigma2/xtraEvent/*.api

echo "================================================="
echo "  SUCCESS: xtraEvent API Keys Installed!"
echo "================================================="
exit 0
