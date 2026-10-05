# Homebrew formula for the Loca Location Engine (GPL-3.0-or-later).
#
# Ships a standalone PyInstaller binary (Python + all deps bundled), so install is
# just a download — no dependency pinning, no source builds. Apple Silicon only for
# now; add an x86_64 build + arch conditional for Intel Macs.
class LocaEngine < Formula
  desc "Location Engine for Loca that simulates iPhone GPS via pymobiledevice3"
  homepage "https://github.com/idonuntius/loca-engine"
  url "https://github.com/idonuntius/loca-engine/releases/download/v0.1.1/loca-engine-0.1.1-arm64.tar.gz"
  sha256 "7bff25aeddca324de845382a8df984269b7dfd66b094238148a5619de1da0895"
  license "GPL-3.0-or-later"

  depends_on arch: :arm64

  def install
    bin.install "loca-engine"
  end

  test do
    assert_match "serve", shell_output("#{bin}/loca-engine --help")
  end
end
