#!/bin/sh
# BrowserOS Flatpak launcher script

# Merge browser policies from the host system
for proot in "etc/browseros/policies" "etc/chromium/policies"; do
  for ptype in managed recommended enrollment; do
    if [ -d "/run/host/$proot/$ptype" ]; then
      mkdir -p "/etc/browseros/policies/$ptype"
      ln -sf "/run/host/$proot/$ptype"/*.json "/etc/browseros/policies/$ptype" 2>/dev/null
    fi
  done
done

exec cobalt "$@" --no-default-browser-check
