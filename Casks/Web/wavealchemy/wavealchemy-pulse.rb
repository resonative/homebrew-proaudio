cask "wavealchemy-pulse" do
  version "1.1.0"
  sha256 :no_check

  url "https://www.wavealchemy.co.uk/product/pulse/?kfd=aHR0cHM6Ly93YXZlLWFsY2hlbXkuczMuYW1hem9uYXdzLmNvbS9kb3dubG9hZHMvbWFpbl9zYW1wbGVzL1B1bHNlX01hY09TLnppcA=="
  name "Wave Alchemy Pulse"
  desc "PCM60 digital reverb"
  homepage "https://www.wavealchemy.co.uk/product/pulse/"

  auto_updates false

  pkg "Pulse_MacOS/Pulse Installer #{version}.pkg"

  uninstall pkgutil: "com.wavealchemy.pkg.Pulse*"
end
