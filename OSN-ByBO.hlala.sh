#!/bin/sh
#

# Slyk Universal toppicks V5 (C) kiddac. 2019

python /usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/locale/ar/slyk/osn/OSN_scraper.py

# Slyk Universal toppicks V5 (C) kiddac. 2019
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

python /usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/locale/ar/osn/slyk/OSN-ByBO.hlala.py
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/locale/ar/osn/slyk/*.json 






























echo "##################################################"
echo "#         Developed By Bo.HLALA .. ^_^            #"
echo "#     Updated Successfully ... Lets Fun !!!       #"
echo "#         Thanks for using our script             #"
echo "##################################################"
else
echo "   >>>>   INSTALLATION FAILED !   <<<<"
fi;
echo '**************************************************'
echo '**                   FINISHED                   **'
echo '**************************************************'

exit 0
