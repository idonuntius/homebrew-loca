# Homebrew formula for the Loca Location Engine (GPL-3.0-or-later).
#
# Ships a standalone PyInstaller onedir bundle (Python + all deps bundled), so install
# is just a download — no dependency pinning, no source builds. Apple Silicon only for
# now; add an x86_64 build + arch conditional for Intel Macs.
#
# The bundle (executable + `_internal/`) lives in libexec; bin gets an exec wrapper so
# the engine's `sys.executable` is the real bundle path (it re-invokes itself for the
# RSD tunnel) and the PID the GUI spawns is the engine itself.
class LocaEngine < Formula
  desc "Location Engine for Loca that simulates iPhone GPS via pymobiledevice3"
  homepage "https://github.com/idonuntius/loca-engine"
  url "https://github.com/idonuntius/loca-engine/releases/download/v0.1.2/loca-engine-0.1.2-arm64.tar.gz"
  sha256 "c2710c2821ff7d4f64690956463e045b1121cf8748cffb769cfc12c153eedce3"
  license "GPL-3.0-or-later"

  depends_on arch: :arm64

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"loca-engine"
  end

  test do
    assert_match "serve", shell_output("#{bin}/loca-engine --help")
  end
end
