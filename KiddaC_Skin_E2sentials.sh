#!/bin/sh
#########################################################
version= 2.2
description= Developed By Bo.HLALA .. ^_^  ready to upgrade... Lets Fun !!!
#########################################################
#########################################################
MY_FILE="byBO-HLALA_KiddaC-Skin-E2sentials.tar.gz"
MY_TMP_FILE="/var/volatile/tmp/"$MY_FILE
#########################################################

MY_SEP='============================================================='
echo $MY_SEP
echo 'Downloading '$MY_FILE' ...'
echo $MY_SEP
echo 'Downloading '$MY_FILE1' ...'
echo $MY_SEP
echo ''

wget -O /var/volatile/tmp/byBO-HLALA_KiddaC-Skin-E2sentials.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/skins/main/byBO-HLALA_KiddaC-Skin-E2sentials.tar.gz"

rm -rf "/usr/lib/enigma2/python/Plugins/Extensions/KiddaC_Skin_E2sentials"

if [ -f $MY_TMP_FILE ] && [ -f $MY_TMP_FILE1 ]; then

	echo ''
	echo $MY_SEP
	echo 'Extracting ...'
	echo $MY_SEP
	echo ''
	tar -xzvf $MY_TMP_FILE -C /
	tar -xzvf $MY_TMP_FILE1 -C /
	MY_RESULT=$?

	rm -f $MY_TMP_FILE > /dev/null 2>&1
	rm -f $MY_TMP_FILE1 > /dev/null 2>&1

	echo ''
	if [ $MY_RESULT -eq 0 ]; then
        echo "###################################################################"
        echo "#    byBO-HLALA_KiddaC_Skin_E2sentials INSTALLED SUCCESSFULLY     #"
        echo "#                     Developed By Bo.HLALA                       #"
        echo "#            https://www.tunisia-sat.com/forums/forums            #"
        echo "#                https://www.linuxsat-support.com/                #"
        echo "###################################################################"
        echo "#        Sucessfully Download skin ... Lets Fun !!!  .. ^_^       #"
        echo "###################################################################"
		if which systemctl > /dev/null 2>&1; then
			sleep 2; systemctl restart enigma2
		else
			init 4
			sleep 4 > /dev/null 2>&1
			init 3
		fi
	else
		echo "   >>>>   INSTALLATION FAILED !   <<<<"
	fi
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
fi
