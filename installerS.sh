version= 2.2
description= BoHLALA_FHD V2.2\n Skin BoHLALA_FHD ready to upgrade... Lets Fun . ^_^ . !!!

#########################################################
#########################################################
MY_FILE="BoHLALA_Plugin.tar.gz"
MY_TMP_FILE="/var/volatile/tmp/"$MY_FILE  
MY_FILE1="BoHLALA_FHD-Mini.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
#########################################################
MY_FILE="BootLogo.tar.gz"
MY_TMP_FILE="/var/volatile/tmp/"$MY_FILE  
MY_FILE1="BoHLALA_FHD-Mini.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE="BoHLALA_Plugin.tar.gz"
MY_TMP_FILE="/var/volatile/tmp/"$MY_FILE  
MY_FILE1="interface.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE="posterX.tar.gz"
MY_TMP_FILE="/var/volatile/tmp/"$MY_FILE  
MY_FILE1="xtraEvent.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="Channel_List.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="xtraEvent.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="slyk-BoHLALA_FHD.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="Box_LCD4linux.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="EMCSelection.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="PluginBrowser.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="VolumeBar.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
MY_FILE1="fonts.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1

#########################################################


MY_SEP='============================================================='
echo $MY_SEP
echo 'Downloading '$MY_FILE' ...'
echo $MY_SEP
echo ''

wget -O /var/volatile/tmp/BoHLALA_Plugin.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/skins/main/BoHLALA_Plugin.tar.gz"
wget -O /var/volatile/tmp/BoHLALA_FHD-Mini.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/skins/main/BoHLALA_FHD-Mini.tar.gz"
wget -O /var/volatile/tmp/BootLogo.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/BootLogo.tar.gz"
wget -O /var/volatile/tmp/interface.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/interface.tar.gz"                      
wget -O /var/volatile/tmp/posterX.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/posterX.tar.gz"
wget -O /var/volatile/tmp/xtraEvent.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/xtraEvent.tar.gz"
wget -O /var/volatile/tmp/Channel_List.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/Channel_List.tar.gz"
wget -O /var/volatile/tmp/slyk-BoHLALA_FHD.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/slyk-BoHLALA_FHD.tar.gz"
wget -O /var/volatile/tmp/Box_LCD4linux.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/Box_LCD4linux.tar.gz"
wget -O /var/volatile/tmp/EMCSelection.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/EMCSelection.tar.gz"
wget -O /var/volatile/tmp/PluginBrowser.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/PluginBrowser.tar.gz"
wget -O /var/volatile/tmp/VolumeBar.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/VolumeBar.tar.gz"
wget -O /var/volatile/tmp/fonts.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/Ksa/main/fonts.tar.gz"



rm -rf "/usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD"
rm -rf "/usr/share/enigma2/BoHLALA_FHD"
rm -rf "/usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/fonts"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/interface"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/xtraEvent"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/posterX"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/Channel_List"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/skyBoHLALA_FHD"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/EMCSelection"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/PluginBrowser"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/VolumeBar"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/Box_LCD4linux"
rm -rf "/usr/share/enigma2/BoHLALA_FHD/k.s.a/Bootlogo"
rm -rf "/usr/share/oatv-bootlogo"


if [ -f $MY_TMP_FILE ]; then

	echo ''
	echo $MY_SEP
	echo 'Extracting ...'
	echo $MY_SEP
	echo ''
	tar -xzvf $MY_TMP_FILE -C /
	MY_RESULT=$?

	rm -f $MY_TMP_FILE > /dev/null 2>&1

	echo ''
	if [ $MY_RESULT -eq 0 ]; then
        echo "########################################################################"
        echo "#              skin BoHLALA V2.2 INSTALLED SUCCESSFULLY                #"
        echo "#                     By BoHLALA . ^_^  support on                     #"
        echo "#              https://www.tunisia-sat.com/forums/forums               #"
        echo "########################################################################"
        echo "#        Sucessfully Download Please apply from skin selection         #"
        echo "########################################################################"
		if which systemctl > /dev/null 2>&1; then
			sleep 2; systemctl restart enigma2
		else
			init 4
			sleep 4 > /dev/null 2>&1
			init 3
		fi
	else
		echo "   >>>>   INSTALLATION FAILED !   <<<<"
	fi;
	 echo '**************************************************'
	 echo '**                   FINISHED                   **'
	 echo '**************************************************'
	 echo ''
	 exit 0
else
	 echo ''
	 echo "Download failed !"
	 exit 1
fi
# ----------------------------------------------------------------------------------------------------------


