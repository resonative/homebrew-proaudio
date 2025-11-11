cask "wavealchemy-tapewave" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.wavealchemy.co.uk/product/tapewave/?kfd=aHR0cHM6Ly93YXZlLWFsY2hlbXkuczMuYW1hem9uYXdzLmNvbS9kb3dubG9hZHMvbWFpbl9zYW1wbGVzL1RhcGV3YXZlX01hY09TLnppcA=="

  name "Wave Alchemy Tapewave"
  desc "Tape effect emulation"
  homepage "https://www.wavealchemy.co.uk/product/tapewave/"

  auto_updates false

  pkg "Tapewave_MacOS/Tapewave Installer #{version}.pkg"

  uninstall pkgutil: "com.wavealchemy.pkg.Tapewave*"
end
