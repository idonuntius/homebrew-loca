# Homebrew formula for the Loca Location Engine (GPL-3.0-or-later).
#
# Ships a standalone PyInstaller binary (Python + all deps bundled), so install is
# just a download — no dependency pinning, no source builds. Apple Silicon only for
# now; add an on_intel block with an x86_64 build for Intel Macs.
class LocaEngine < Formula
  desc "Location Engine for Loca that simulates iPhone GPS via pymobiledevice3"
  homepage "https://github.com/idonuntius/loca-engine"
  version "0.1.0"
  license "GPL-3.0-or-later"

  on_arm do
    url "https://github.com/idonuntius/loca-engine/releases/download/v0.1.0/loca-engine-0.1.0-arm64.tar.gz"
    sha256 "df937557abe332042bd993100578eb7397b9d05f3cdf65d1a88109ace9a9ff78"
  end

  def install
    bin.install "loca-engine"
  end

  test do
    assert_match "serve", shell_output("#{bin}/loca-engine --help")
  end
end
