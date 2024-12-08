cask "wavealchemy-glow" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.wavealchemy.co.uk/product/glow/?kfd=aHR0cHM6Ly93YXZlLWFsY2hlbXkuczMuYW1hem9uYXdzLmNvbS9kb3dubG9hZHMvbWFpbl9zYW1wbGVzL0dsb3dfTWFjT1Muemlw"
  name "Wave Alchemy Glow"
  desc "RMX16 digital reverb"
  homepage "https://www.wavealchemy.co.uk/product/glow/"

  auto_updates false
  depends_on macos: ">= :sierra"

  pkg "Glow_MacOS/Glow Installer #{version}.pkg"

  uninstall pkgutil: "com.wavealchemy.pkg.Glow*"
end
