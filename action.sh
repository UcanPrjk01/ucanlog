#!/system/bin/sh
# Runs when you press Action on the module in your root manager.
MODDIR=${0%/*}
echo "UcanLog: collecting diagnostics, please wait..."
sh "$MODDIR/system/bin/ucanlog"
