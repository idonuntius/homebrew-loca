# Changelog — Loca (app)

The Loca macOS app, installed with `brew install --cask loca`. The engine (`loca-engine`)
has its own changelog at <https://github.com/idonuntius/loca-engine/blob/main/CHANGELOG.md>.

## 0.1.1 — 2026-10-15

- **Fixed:** clicking the map did nothing on macOS 26 (only double-click zoom worked), so no
  point could be selected. A single click now drops the selection pin again.
- **Added:** when a newer `loca-engine` is published, Loca offers **Update** at the top of its
  window, runs the Homebrew upgrade, and restarts the engine.
- The app now reports its real version (it showed `1.0` before).

## 0.1.0 — 2026-10-05

- First public release.
