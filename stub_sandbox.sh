#!/bin/sh
# Stub sandbox for BrowserOS Flatpak.
# cobalt requires a sandbox binary to exist at a known path before it will
# launch the browser.  BrowserOS does not ship chrome-sandbox, so we provide
# this stub that exits 1, causing the Chromium process to fall back to the
# zypak / no-setuid-sandbox mode that is already set up by the BaseApp.
echo "Stub sandbox ignoring command: $*" >&2
exit 1
