# Homebrew formula for the Loca Location Engine (GPL-3.0-or-later).
#
# SKELETON — fill the placeholders at release time:
#   * url / sha256  → the `idonuntius/loca-engine` release tarball + its SHA256
#   * resource "…"  → generated, not hand-written. After setting url/sha256, run:
#       brew update-python-resources Formula/loca-engine.rb
#     (or homebrew-pypi-poet) to emit a `resource` block per bundled dependency.
#
# This formula installs the engine into its own virtualenv and exposes the
# `loca-engine` console script (defined in Engine/pyproject.toml). The Loca GUI
# cask depends on it and spawns `loca-engine serve`.
class LocaEngine < Formula
  include Language::Python::Virtualenv

  desc "Location Engine for Loca — simulates iPhone GPS via pymobiledevice3"
  homepage "https://github.com/idonuntius/loca-engine"
  url "https://github.com/idonuntius/loca-engine/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "37a334e881f0380de2445623a955e837a24950501e6491a04e50184a667b3ae1"
  license "GPL-3.0-or-later"

  depends_on "python@3.13"

  # TODO: generated dependency resources go here (brew update-python-resources).
  # resource "pymobiledevice3" do
  #   url "https://files.pythonhosted.org/.../pymobiledevice3-11.20.2.tar.gz"
  #   sha256 "…"
  # end

  def install
    virtualenv_install_with_resources
  end

  test do
    # The engine prints `LOCA_ENGINE_PORT=<n>` then serves on loopback; just check it starts.
    assert_match "loca", shell_output("#{bin}/loca-engine --help")
  end
end
