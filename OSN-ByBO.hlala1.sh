#!/bin/sh
#
# Slyk Universal toppicks V5 (C) kiddac. 2019
# Slyk Universal toppicks V5 (C) By BO.hlala. 2026
python /usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/locale/ar/slyk/osn/OSN_scraper1.py
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

if test -f /usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/locale/ar/slyk/osn/OSN_channels_data.json; then
    python /usr/lib/enigma2/python/Plugins/Extensions/BoHLALA_FHD/locale/ar/slyk/osn/OSN-ByBO.hlala1.py
fi



























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
