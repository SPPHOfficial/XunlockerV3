#!/system/bin/sh
MODP=/data/adb/modules/Xunlocker
if [ -d $MODP ]; then
ui_print "" 
ui_print "- REMOVING PREINSTALLED MODULE -"
ui_print "" 
#
touch $MODP/disable
rm -rf $MODP
sleep 2
ui_print " DONE " 
exit
fi
sleep 1
ui_print ""
ui_print "╔═╗╔═╗╔╗─╔╗──╔╗──────╔╗ "
ui_print "╚╗╚╝╔╝║║─║║──║║──────║║ "
ui_print "─╚╗╔╝─║║─║╠═╗║║╔══╦══╣║╔╦══╦═╗ "
ui_print" ─╔╝╚╗─║║─║║╔╗╣║║╔╗║╔═╣╚╝╣║═╣╔╝ "
ui_print "╔╝╔╗╚╗║╚═╝║║║║╚╣╚╝║╚═╣╔╗╣║═╣║ "
ui_print "╚═╝╚═╝╚═══╩╝╚╩═╩══╩══╩╝╚╩══╩╝ "
ui_print "" 
sleep 1.5
ui_print ""
ui_print " Special Thanks to "
ui_print ""
ui_print " @akirasupr "
ui_print " @imusif12 "
ui_print " All Users And Testers "
sleep 2.0
ui_print ""
ui_print " Prepairing Installer "
sleep 1.5
ui_print ""
ui_print " READY TO GO "
ui_print""
s
set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644
}
SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
postfs=$TMPDIR/post-fs-data.sh
. $TMPDIR/functions.sh
