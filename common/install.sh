GAMEUSERSETTINGS_FILE=/data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini
ui_print""
sleep 0.5
ui_print ""
ui_print " Device Info : "
sleep 2.0
ui_print ""
ui_print " Android Version : $(getprop ro.system.build.version.release) "
ui_print " Model : $(getprop ro.product.model) "
ui_print " Manufacturer : $(getprop ro.product.system.manufacturer) "
ui_print " SDK Version : $(getprop ro.system.build.version.sdk) "
ui_print ""
sleep 0.5
ui_print " (Volume + Next) × (Volume - Install) "
ui_print ""
sleep 0.5
ui_print " MODES "
ui_print ""
sleep 0.2
ui_print " 1. PUBGM And ASPHALT 9 (ALL VERSIONS OF PUBGM +BGMI)  "
sleep 0.2
ui_print " 2. CODM And BlackDesert Mobile "
sleep 0.2
ui_print " 3. Mobile Legends "
sleep 0.2
ui_print " 4. League of Legends - 120FPS "
sleep 0.2
ui_print " 5. COD Mobile - 120FPS "
sleep 0.2
ui_print " 6. Fortnite ( WITHOUT CHANGING DEVICE MODEL )"
ui_print ""
sleep 0.2
ui_print " Select Mode : "
GU=1
while true; do
	ui_print "  $GU"
	if $VKSEL; then
		GU=$((GU + 1))
	else 
		break
	fi
	if [ $GU -gt 6 ]; then
		GU=1
	fi
done
ui_print " Selected: $GU "
#
case $GU in
 1 ) TEXT3="✓PUBGM AND ASPHALT 9 "; FCTEXT=" PUBGM And ASPHALT 9 "; sed -i '/ro.product.model/s/.*/ro.product.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=GM1917/' $MODPATH/system.prop;;
 2 ) TEXT3="✓CODM And BLACKDESERT MOBILE "; FCTEXT=" CODM And BlackDesert Mobile "; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SM-G965F/' $MODPATH/system.prop;;
 3 ) TEXT3="✓MOBILE LEGENDS"; FCTEXT="Mobile Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=Mi 10 Pro/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=Mi 10 Pro/' $MODPATH/system.prop;;
 4 ) TEXT3="✓LEAGUE OF LEGANDS "; FCTEXT="League of Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SM-G9880/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SM-G9880/' $MODPATH/system.prop;;
 5 ) TEXT3="✓CODM "; FCTEXT="COD Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SO-52A/' $MODPATH/system.prop;;
 6 ) TEXT3="✓FORTNITE "; FCTEXT="Fortnite"; chmod 0777 $GAMEUSERSETTINGS_FILE; magiskhide enable; magiskhide add com.epicgames.fortnite; settings put global adb_enabled 0; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.epicgames.fortnite; sed -i -e 's/MobileFPSMode=Mode_20Fps/MobileFPSMode=Mode_60Fps/g' $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_30Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_45Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_60Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_120Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE;;
esac
ui_print ""
ui_print "- MODE: $FCTEXT "
ui_print ""
ui_print " Thanks For Choosing XUnlocker "
ui_print ""

