# The Free Lantern Player

A music app for [MicroPythonOS](https://micropythonos.com) on Fri3d Camp ESP32-S3
badges. It streams music from [The Free Lantern](https://www.thefreelantern.com),
buffering 45-second fragments in the background, and can download whole albums to
the SD card for offline playback.

- **App ID:** `com.linuxbe.thefreelanternplayer`
- **Runs on:** MicroPythonOS 0.13+ (Fri3d Badge 2024 and 2026)
- **Author:** LinuxBE (Jasper Nuyens)

## Repository layout

```
com.linuxbe.thefreelanternplayer/   the app, exactly as installed on-device
  MANIFEST.JSON                     app metadata (activities, version, urls)
  icon_64x64.png                    launcher icon
  assets/
    tfl_player.py                   the app code
    skin_bg.png, p_*.png            player UI artwork
build.sh                            packages the app into a .mpk
```

Only the `com.linuxbe.thefreelanternplayer/` directory is installed on the device.
Everything at the top level (this README, the build script, license) stays in the
repo.

## Build

```sh
./build.sh
```

This produces `dist/com.linuxbe.thefreelanternplayer_<version>.mpk` (an `.mpk` is a
ZIP of the app directory, built with a deterministic file order so the output is
reproducible). Install it via the MicroPythonOS App Store or by copying it to the
device.

## History

Originally developed and released in the MicroPythonOS monorepo as
`com.micropythonos.thefreelanternplayer`. Moved to its own repository and renamed
to the `com.linuxbe.*` namespace so it lives under its author's domain, following
the MicroPythonOS [app conventions](https://docs.micropythonos.com/apps/creating-apps/).

## License

Copyright (C) 2026 Jasper Nuyens (LinuxBE).

Licensed under the GNU Affero General Public License v3.0 (AGPL-3.0). See
[LICENSE](LICENSE). This is the author's own work; the earlier copy contributed
to the MicroPythonOS monorepo remains under that project's MIT license.
