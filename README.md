# Loca — Homebrew tap

Install [Loca](https://github.com/idonuntius) — a developer tool to debug iOS location from
your Mac by simulating a connected iPhone's GPS.

> This directory is the **source** for the public tap repo `idonuntius/homebrew-loca`.
> At release time its contents (`Formula/`, `Casks/`, this `README.md`) are copied there.

## Install

```sh
brew tap idonuntius/loca
brew install --cask loca
```

This installs two things:

- **`loca-engine`** (formula) — the Location Engine, **GPL-3.0-or-later**, open source at
  <https://github.com/idonuntius/loca-engine>. A self-contained build (Python and all
  dependencies bundled), so no other dependencies are installed.
- **`loca`** (cask) — the signed, notarized **Loca.app** (proprietary). It talks to the
  engine over loopback HTTP and never links its GPL code.

## Update

The engine and the app are versioned and released **separately**, so update both:

```sh
brew update
brew upgrade                      # upgrades everything outdated, including loca-engine and loca
```

Or update them explicitly:

```sh
brew update
brew upgrade loca-engine          # the engine (formula)
brew upgrade --cask loca          # the app (cask)
```

> `brew upgrade --cask loca` alone does **not** reliably upgrade `loca-engine` — when only the
> engine has a new release it does nothing. Quit and reopen Loca after upgrading so it starts
> the new engine.

## Usage (quick start)

1. Connect your iPhone over USB, unlock it, trust this Mac, and enable **Developer Mode**
   (Settings → Privacy & Security → Developer Mode → On → restart).
2. Open **Loca**. Select the device, then **Run Connection Doctor**.
3. **Click the map** to choose a point, then press **Teleport**.
4. Use the **Step** pad for exact N/S/E/W jumps, or drag the joystick (or hold WASD / arrow
   keys) to move continuously.
5. **Stop Simulation** returns the iPhone to real GPS.

> ⚠️ Loca's engine uses the iPhone's single developer tunnel. Stop Loca while debugging the
> same device in Xcode (and vice versa).

The menu-bar paper plane gives quick access to favorites and Stop. Help → **Loca Help** (⌘?)
opens this quick start inside the app.

## Licensing

- `loca-engine`: GPL-3.0-or-later (source above; corresponding source published per release).
- `loca` (the GUI): proprietary. Third-party notices ship with the engine.

## Requirements

- macOS 26+ and an iPhone (iOS 17+). Developer Mode required on the device.
