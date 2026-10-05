# Homebrew cask for the Loca macOS app (proprietary, signed + notarized).
#
# SKELETON — fill the placeholders at release time:
#   * version / url / sha256 → the signed+notarized Loca.app .zip
#
# IMPORTANT: the download must be PUBLIC. The monorepo is private, so its releases
# aren't publicly downloadable — host the notarized .zip on a PUBLIC repo's
# Releases (e.g. a public `idonuntius/loca` releases-only repo, or the tap repo's
# own releases) and point `url` there.
#
# The cask depends on the GPL engine formula, so `brew install --cask loca`
# pulls both; the GUI finds `loca-engine` on PATH and spawns it.
cask "loca" do
  version "0.1.0"
  sha256 "bd75d13f0bbdfd7dd36c60d068c924348b4dedce277016238b9a4efdb7ff69c8"

  # Hosted on the public tap repo's releases (the `Loca` monorepo is private).
  url "https://github.com/idonuntius/homebrew-loca/releases/download/v#{version}/Loca-#{version}.zip"
  name "Loca"
  desc "Debug iOS location from your Mac — simulate a connected iPhone's GPS"
  homepage "https://github.com/idonuntius/homebrew-loca"

  depends_on formula: "idonuntius/loca/loca-engine"
  depends_on macos: ">= :sequoia" # macOS 26+ (adjust to the real minimum)

  app "Loca.app"

  caveats <<~EOS
    Loca drives a connected iPhone's location. Enable Developer Mode on the iPhone,
    trust this Mac, then open Loca. Usage guide:
      https://github.com/idonuntius/homebrew-loca#usage
  EOS
end
