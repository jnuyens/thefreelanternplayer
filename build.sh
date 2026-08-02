#!/bin/sh
# Package the app into a .mpk (a ZIP of the app directory).
# Uses a deterministic file order and a fixed timezone so the output is
# reproducible, matching how the MicroPythonOS app store bundles apps.
set -e

app="com.linuxbe.thefreelanternplayer"
version=$(grep '"version"' "$app/MANIFEST.JSON" | head -1 | sed 's/.*: *"//;s/".*//')
out="dist"
mpk="$out/${app}_${version}.mpk"

mkdir -p "$out"
rm -f "$mpk"

# List dirs then files, drop VCS noise, sort for stable order, store (no compression).
( find -L "$app" -type d; find -L "$app" -type f ) \
    | grep -v '/\.git/' \
    | sort \
    | TZ=CET zip -X -r0 "$mpk" -@

echo "Built $mpk"
