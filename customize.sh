#!/system/bin/sh
# UcanLog installer. Runs inside the root manager (Magisk, KernelSU or APatch).
ui_print "- UcanLog by UcanPrjk01"
ui_print "- Terminal: su -c ucanlog"
ui_print "- Or press Action in your root manager, if it has the button"
ui_print "- Reports are saved to /sdcard/UcanLog"
set_perm_recursive "$MODPATH/system/bin" 0 2000 0755 0755
set_perm "$MODPATH/action.sh" 0 0 0755
