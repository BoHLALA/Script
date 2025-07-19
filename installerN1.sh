#!/bin/sh
#########################################################
version= 2.2
description= Developed By Bo.HLALA .. ^_^  ready to upgrade... Lets Fun !!!
#########################################################
#########################################################
MY_FILE="BoHLALA_Plugin.tar.gz"
MY_TMP_FILE="/var/volatile/tmp/"$MY_FILE
MY_FILE1="BoHLALA_FHD-Mini.tar.gz"
MY_TMP_FILE1="/var/volatile/tmp/"$MY_FILE1
#########################################################

MY_SEP='============================================================='
echo $MY_SEP
echo 'Downloading '$MY_FILE' ...'
echo $MY_SEP
echo 'Downloading '$MY_FILE1' ...'
echo $MY_SEP
echo ''

wget -O /var/volatile/tmp/BoHLALA_Plugin.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/skins/main/BoHLALA_Plugin.tar.gz"
wget -O /var/volatile/tmp/BoHLALA_FHD-Mini.tar.gz --no-check-certificate "https://raw.githubusercontent.com/BoHLALA/skins/main/BoHLALA_FHD-Mini.tar.gz"

rm -rf "/usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD"
rm -rf "/usr/share/enigma2/BoHLALA_FHD"

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


	SKINDIR='/usr/share/enigma2/BoHLALA_FHD'
	TMPDIR='/tmp'
	BOXMODEL=$(cat /etc/hostname)
	set -e
	echo "Supported Images are :"
	echo "1- OpenATV 7.3 , OpenATV 7.4.x , OpenATV 7.5.x , OpenATV 7.6"
	echo "2- Egami 10.4 , Egami 10.5 , Egami 10.6"
	echo "3- PurE2 7.3 , 7.4"
	echo "4- OpenSPA 8.3 , 8.4"
	sleep 2
	echo "Identify your image ...."
	sleep 2
	if grep -qs -i "openATV" /etc/image-version; then
    	echo "You have OpenAtv image"
        echo "Adjusting some files according to your image..."
        mv $SKINDIR/image_logo/openatv/imagelogo.png $SKINDIR
	mv $SKINDIR/image_logo/openatv/top_logo.png $SKINDIR
	if [ -f /usr/share/enigma2/"${BOXMODEL}".png ] ; then
		cp /usr/share/enigma2/"${BOXMODEL}".png $SKINDIR/boximage.png
	else
		cp /usr/share/enigma2/BoHLALA_FHD/main/boximage.png $SKINDIR/boximage.png
		cp /usr/share/enigma2/BoHLALA_FHD/main/top_logo.png $SKINDIR/top_logo.png
	fi
   
	elif grep -qs -i "egami" /etc/image-version; then
        echo "You have Egami image"
	echo "Adjusting some files according to your image..."
	mv $SKINDIR/image_logo/egami/imagelogo.png $SKINDIR
	mv $SKINDIR/image_logo/egami/top_logo.png $SKINDIR
	if [ -f /usr/share/enigma2/"${BOXMODEL}".png ] ; then
		cp /usr/share/enigma2/"${BOXMODEL}".png $SKINDIR/boximage.png
	else
		cp /usr/share/enigma2/BoHLALA_FHD/main/boximage.png $SKINDIR/boximage.png
		cp /usr/share/enigma2/BoHLALA_FHD/main/top_logo.png $SKINDIR/top_logo.png
	fi
	
	elif grep -qs -i "PURE2" /etc/image-version; then
	    echo "You have PURE2 image"
	echo "Adjusting some files according to your image..."
	mv $SKINDIR/image_logo/pure2/imagelogo.png $SKINDIR
	mv $SKINDIR/image_logo/pure2/top_logo.png $SKINDIR
	if [ -f /usr/share/enigma2/"${BOXMODEL}".png ] ; then
		cp /usr/share/enigma2/"${BOXMODEL}".png $SKINDIR/boximage.png
	else
		cp /usr/share/enigma2/BoHLALA_FHD/main/boximage.png $SKINDIR/boximage.png
		cp /usr/share/enigma2/BoHLALA_FHD/main/top_logo.png $SKINDIR/top_logo.png
	fi
	
	elif grep -qs -i "OpenSPA" /etc/image-version; then
  	  echo "You have OpenSPA image"
	echo "Adjusting some files according to your image..."
        mv $SKINDIR/image_logo/openspa/imagelogo.png $SKINDIR
        mv $SKINDIR/image_logo/openspa/top_logo.png $SKINDIR
	if [ -f /usr/share/enigma2/"${BOXMODEL}".png ] ; then
	    cp /usr/share/enigma2/"${BOXMODEL}".png $SKINDIR/boximage.png
	else
		cp /usr/share/enigma2/BoHLALA_FHD/main/boximage.png $SKINDIR/boximage.png
		cp /usr/share/enigma2/BoHLALA_FHD/main/top_logo.png $SKINDIR/top_logo.png
	fi
	
	else
	  echo "even you do not have supported image , you can try BoHLALA_FHD"
          cp /usr/share/enigma2/BoHLALA_FHD/main/boximage.png $SKINDIR/boximage.png
	  cp /usr/share/enigma2/BoHLALA_FHD/main/top_logo.png $SKINDIR/top_logo.png
	fi
	sleep 2
	echo "removing some files.... "
	rm -rf $SKINDIR/image_logo  > /dev/null 2>&1
	rm -rf /control  > /dev/null 2>&1

 
        echo "###################################################################"
        echo "#         skin BoHLALA_FHD v_2.2 INSTALLED SUCCESSFULLY           #"
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
