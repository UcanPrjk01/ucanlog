# UcanLog

A small diagnostics collector for rooted Android devices. One command creates a report you can attach to a bug report.

Made by [UcanPrjk01](https://github.com/UcanPrjk01).

## What it collects

| File | Content |
|---|---|
| `device.txt` | manufacturer, model, Android version, security patch, build fingerprint, kernel, SELinux mode |
| `root.txt` | which root solution can be detected (Magisk version if available, KernelSU or APatch data directory) |
| `modules.txt` | installed modules with version and state (enabled, disabled, pending removal) |
| `logcat.txt` | `logcat -b all -d -v threadtime` |
| `dmesg.txt` | kernel log (root needed) |

Reports are saved to `/sdcard/UcanLog/ucanlog-YYYYMMDD-HHMMSS.tar.gz`.

## Install

1. Download the ZIP from [Releases](../../releases).
2. Open your root manager (Magisk, KernelSU or APatch), go to Modules, install the ZIP from storage.
3. Reboot.

## Use

Terminal (Termux or adb shell):

```
su -c ucanlog
su -c "ucanlog --no-logcat"
```

Or press **Action** on the module in your root manager, if it shows that button.

Options: `--no-logcat`, `--no-dmesg`, `-v` / `--version`, `-h` / `--help`.

## Privacy

Logs can contain account names, app names and device identifiers. Read the files and remove anything private before you share them. Nothing is uploaded anywhere; the report stays on your device.

## Compatibility

Not listed yet. The module has not been tested on specific devices. Test results will be added to `site-info.json` once confirmed.

## Build and release

The workflow in `.github/workflows/release.yml` builds `ucanlog-<tag>.zip` and a `.sha256` file and publishes them as a GitHub Release. The tag must match `version=` in `module.prop`.

## License

MIT, see `LICENSE`.
